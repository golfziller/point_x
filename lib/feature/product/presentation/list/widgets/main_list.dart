import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:point_x/feature/product/domain/entities/product_category.dart';
import 'package:point_x/feature/product/presentation/list/controller/product_list_controller.dart';
import 'package:point_x/feature/product/presentation/list/hooks/use_debounce_search.dart';
import 'package:point_x/feature/product/presentation/list/hooks/use_product_scroll.dart';
import 'package:point_x/feature/product/presentation/list/state/product_list_state.dart';
import 'package:point_x/feature/product/presentation/list/widgets/category_list.dart';
import 'package:point_x/feature/product/presentation/list/widgets/not_found.dart';
import 'package:point_x/feature/product/presentation/list/widgets/search_bar.dart';
import 'package:point_x/feature/product/presentation/list/widgets/show_products.dart';
import 'package:point_x/router/app_router.dart';
import 'package:point_x/shared/widgets/common/ui_helper.dart';

class ProductMainList extends HookConsumerWidget {
  final ProductListData productListData;
  final List<ProductCategory> productCategories;
  final String? currentSlugCategory;
  const ProductMainList({
    super.key,
    required this.productListData,
    required this.productCategories,
    this.currentSlugCategory,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ctrl = ref.watch(productListControllerProvider.notifier);

    final scrollController = useScrollController();
    useProductScroll(scrollController, ctrl);

    useDebounceSearch(productListData.search, ctrl);

    Widget buildbody() {
      if (productListData.isLoading) {
        return Expanded(child: Center(child: CircularProgressIndicator()));
      }
      if (productListData.products.isEmpty) {
        return Expanded(child: NotFound());
      }
      return Expanded(
        child: RefreshIndicator(
          onRefresh: ctrl.onPullRefresh,
          child: ListView.builder(
            controller: scrollController,
            // เพิ่ม +1 เฉพาะตอนโหลดเพิ่ม
            itemCount:
                productListData.products.length +
                (productListData.isLoadMore ? 1 : 0),
            itemBuilder: (context, index) {
              if (index < productListData.products.length) {
                return ProductItemCard(
                  product: productListData.products[index],
                  onTab: () {
                    ProductDetailRoute(
                      id: '${productListData.products[index].id}',
                    ).push(context);
                  },
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      );
    }

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SearchForm(onSearchChange: ctrl.onSearchChange),
            verticalSpaceMedium,
            CategoriesList(
              categoriesList: productCategories,
              currentSlug: currentSlugCategory,
              onTap: ctrl.onSelectedCategory,
            ),
            verticalSpaceMedium,
            buildbody(),
          ],
        ),
      ),
    );
  }
}
