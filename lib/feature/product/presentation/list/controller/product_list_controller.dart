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
    if (data == null) return;

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
    final [listCategory, productData] = await Future.wait([
      _loadCategories(),
      _loadProductAll(),
    ]);
    //อนุญาติให้แสดงโปรดักได้เผื่อ กรณี category พัง
    if (productData != null) {
      state = ProductListState.initialized(
        data: productData as ProductListData,
        productCategories: listCategory != null
            ? listCategory as List<ProductCategory>
            : [],
      );
    } else {
      state = ProductListState.error();
    }
  }

  Future<void> fetchProductAll() async {
    final productData = await _loadProductAll();
    if (productData != null) {
      state = state.maybeMap(
        orElse: () => state,
        initialized: (d) {
          return d.copyWith(data: productData);
        },
      );
    }
  }

  Future<void> onSelectedCategory(ProductCategory pdCategory) async {
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
    if (isLoadMore && (data.products.length >= data.total || data.isLoadMore)) {
      return;
    }

    final skip = isLoadMore ? data.skip + data.limit : 0;
    _updateProductData(
      (old) => old.copyWith(
        isLoading: !isLoadMore,
        isLoadMore: isLoadMore,
        skip: skip,
        total: isLoadMore ? old.total : 0,
      ),
    );

    final res = await ref.read(
      loadProductByCategoryUseCaseProvider(
        _currentSelectedCategory!.slug,
        ProductQuery(skip: skip, limit: data.limit),
      ).future,
    );

    if (!res.isSuccess) {
      _updateProductData(
        (o) => o.copyWith(isLoading: false, isLoadMore: false),
      );
      return;
    }

    final result = res.getValueSuccess();
    final products = isLoadMore
        ? [...data.products, ...result.products]
        : result.products;

    _updateProductData(
      (o) => o.copyWith(
        products: products,
        isLoading: false,
        isLoadMore: false,
        total: result.total,
        skip: skip,
      ),
    );
  }

  Future<ProductListData?> _fetchProductList(ProductQuery query) async {
    final res = await ref.read(loadProductListUseCaseProvider(query).future);

    if (!res.isSuccess) {
      return null;
    }

    final result = res.getValueSuccess();
    return ProductListData(
      products: result.products,
      isLoading: false,
      total: result.total,
    );
  }

  Future<ProductListData?> _loadProductAll() async {
    final data = ProductListData();
    return _fetchProductList(ProductQuery(skip: data.skip, limit: data.limit));
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
    if (loadMore && (data.products.length >= data.total || data.isLoadMore)) {
      return;
    }

    final query = data.search?.trim() ?? '';
    final skip = loadMore ? data.skip + data.limit : 0;

    _updateProductData(
      (old) => old.copyWith(
        isLoading: !loadMore,
        isLoadMore: loadMore,
        skip: skip,
        total: loadMore ? old.total : 0,
      ),
    );

    final res = await ref.read(
      searchProductListUseCaseProvider(
        ProductQuery(skip: skip, limit: data.limit, q: query),
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
        total: result.total,
        skip: skip,
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
      final productData = await _loadProductAll();
      if (productData != null) {
        _updateProductData((o) => o.copyWith(products: productData.products));
      }
    }
  }

  Future<void> loadProductMore() async {
    final data = _currentData;
    if (data == null || data.isLoadMore || data.products.length >= data.total) {
      return;
    }

    final nextSkip = data.skip + data.limit;
    _updateProductData((o) => o.copyWith(isLoadMore: true, skip: nextSkip));

    final productData = await _fetchProductList(
      ProductQuery(skip: data.skip, limit: data.limit),
    );

    if (productData == null) {
      _updateProductData((o) => o.copyWith(isLoadMore: false));
      return;
    }

    _updateProductData(
      (o) => o.copyWith(
        isLoadMore: false,
        products: [...o.products, ...productData.products],
        total: productData.total,
        skip: nextSkip,
      ),
    );
  }
}
