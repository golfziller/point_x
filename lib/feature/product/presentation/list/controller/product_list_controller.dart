import 'package:point_x/feature/product/domain/entities/product.dart';
import 'package:point_x/feature/product/domain/entities/product_category.dart';
import 'package:point_x/feature/product/domain/entities/product_query.dart';
import 'package:point_x/feature/product/domain/usecase/load_product_by_category_usecase.dart';
import 'package:point_x/feature/product/domain/usecase/load_product_category_usecase.dart';
import 'package:point_x/feature/product/domain/usecase/load_product_list_usecase.dart';
import 'package:point_x/feature/product/domain/usecase/search_product_list_usecase.dart';
import 'package:point_x/feature/product/presentation/list/state/product_list_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_list_controller.g.dart';

@riverpod
class ProductListController extends _$ProductListController {
  @override
  ProductListState build() {
    Future(() => _initialData());
    return const ProductListState.initial();
  }

  ProductListData? get _currentData =>
      state.maybeMap(initialized: (s) => s.data, orElse: () => null);
  ProductCategory? get _currentSelectedCategory => state.maybeMap(
    initialized: (s) => s.currentSelectedCategory,
    orElse: () => null,
  );

  void _updateProductData(
    ProductListData Function(ProductListData oldData) update,
  ) {
    final data = _currentData;
    if (data == null || !ref.mounted) return;
    state = state.maybeMap(
      initialized: (s) => s.copyWith(data: update(data)),
      orElse: () => state,
    );
  }

  Future<void> onSearchChange(String? v) async {
    if (v != null) {
      _updateProductData((o) => o.copyWith(search: v));
    }
  }

  Future<void> _initialData() async {
    final [listCategory, productGetAllList] = await Future.wait([
      _loadCategories(),
      _loadProducts(),
    ]);
    if (!ref.mounted) return;
    //อนุญาติให้แสดงโปรดักได้เผื่อ กรณี category พัง
    if (productGetAllList != null) {
      final pdGetAllList = productGetAllList as ProductGetAllList;
      state = ProductListState.initialized(
        data: ProductListData(
          productsInfo: pdGetAllList,
          products: productGetAllList.products,
        ),
        productCategories: listCategory != null
            ? listCategory as List<ProductCategory>
            : [],
      );
    } else {
      state = ProductListState.error();
    }
  }

  Future<void> fetchProductAll() async {
    _updateProductData((o) => o.copyWith(isLoading: true));
    final result = await _loadProducts();
    _updateProductData(
      (o) => result != null
          ? o.copyWith(
              isLoading: false,
              productsInfo: result,
              products: result.products,
            )
          : o.copyWith(isLoading: false),
    );
  }

  Future<void> onSelectedCategory(ProductCategory pdCategory) async {
    if (_currentData?.isLoading == true || !ref.mounted) {
      return;
    }
    state = state.maybeMap(
      orElse: () => state,
      initialized: (data) => data.copyWith(
        currentSelectedCategory:
            pdCategory.slug == data.currentSelectedCategory?.slug
            ? null
            : pdCategory,
      ),
    );

    if (_currentSelectedCategory == null) {
      await fetchProductAll();
    } else {
      await _loadProductByCategory();
    }
  }

  Future<List<ProductCategory>?> _loadCategories() async {
    final res = await ref.read(loadProductCategoryUseCaseProvider.future);
    if (res.isSuccess) {
      return res.getValueSuccess();
    } else {
      return null;
    }
  }

  Future<void> _loadProductByCategory({bool isLoadMore = false}) async {
    if (_currentSelectedCategory == null) return;

    final data = _currentData;

    if (data == null) return;
    final productsInfo = data.productsInfo;
    if (isLoadMore &&
        (data.products.length >= productsInfo.total || data.isLoadMore)) {
      return;
    }

    final skip = isLoadMore ? productsInfo.skip + productsInfo.limit : 0;
    _updateProductData(
      (old) => old.copyWith(
        isLoading: !isLoadMore,
        isLoadMore: isLoadMore,
        search: null,
      ),
    );

    final res = await ref.read(
      loadProductByCategoryUseCaseProvider(
        _currentSelectedCategory!.slug,
        ProductQuery(skip: skip),
      ).future,
    );

    if (!res.isSuccess) {
      _updateProductData(
        (o) => o.copyWith(isLoading: false, isLoadMore: false),
      );
      return;
    }

    final result = res.getValueSuccess();

    _updateProductData((o) {
      final products = isLoadMore
          ? [...o.products, ...result.products]
          : result.products;
      return o.copyWith(
        products: products,
        productsInfo: result,
        isLoading: false,
        isLoadMore: false,
      );
    });
  }

  Future<ProductGetAllList?> _loadProducts({ProductQuery? query}) async {
    final res = await ref.read(
      loadProductListUseCaseProvider(query ?? ProductQuery()).future,
    );

    if (!res.isSuccess) {
      return null;
    }

    final result = res.getValueSuccess();
    return result;
  }

  Future<void> onLoadMore() async {
    final data = _currentData;
    if (data == null || data.isLoadMore) return;

    if (data.search != null && data.search!.isNotEmpty) {
      await _searchProducts(loadMore: true);
    } else if (_currentSelectedCategory != null) {
      await _loadProductByCategory(isLoadMore: true);
    } else {
      await loadProductMore();
    }
  }

  Future<void> _searchProducts({bool loadMore = false}) async {
    final data = _currentData;
    if (data == null) return;
    if (loadMore &&
        (data.products.length >= data.productsInfo.total || data.isLoadMore)) {
      return;
    }

    final query = data.search?.trim() ?? '';
    final skip = loadMore
        ? data.productsInfo.skip + data.productsInfo.limit
        : 0;

    _updateProductData(
      (old) => old.copyWith(isLoading: !loadMore, isLoadMore: loadMore),
    );

    final res = await ref.read(
      searchProductListUseCaseProvider(
        ProductQuery(skip: skip, q: query),
      ).future,
    );

    if (!res.isSuccess) {
      _updateProductData(
        (o) => o.copyWith(isLoading: false, isLoadMore: false),
      );
      return;
    }

    final result = res.getValueSuccess();
    _updateProductData((old) {
      final products = loadMore
          ? [...old.products, ...result.products]
          : result.products;
      return old.copyWith(
        products: products,
        isLoading: false,
        isLoadMore: false,
        productsInfo: result,
      );
    });
  }

  Future<void> searchProduct() async {
    await _searchProducts();
  }

  Future<void> onPullRefresh() async {
    final data = _currentData;
    if (data == null) return;

    if (data.search != null && data.search!.isNotEmpty) {
      await _searchProducts();
    } else if (_currentSelectedCategory != null) {
      await _loadProductByCategory();
    } else {
      final result = await _loadProducts();
      if (result != null) {
        _updateProductData(
          (o) => o.copyWith(products: result.products, productsInfo: result),
        );
      }
    }
  }

  Future<void> loadProductMore() async {
    final data = _currentData;
    if (data == null ||
        data.isLoadMore ||
        data.products.length >= data.productsInfo.total) {
      return;
    }

    final nextSkip = data.productsInfo.skip + data.productsInfo.limit;
    _updateProductData((o) => o.copyWith(isLoadMore: true));

    final result = await _loadProducts(query: ProductQuery(skip: nextSkip));

    if (result == null) {
      _updateProductData((o) => o.copyWith(isLoadMore: false));
      return;
    }

    _updateProductData(
      (o) => o.copyWith(
        isLoadMore: false,
        products: [...o.products, ...result.products],
        productsInfo: result,
      ),
    );
  }
}
