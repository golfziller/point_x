import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:point_x/feature/product/presentation/list/controller/product_list_controller.dart';
import 'package:point_x/feature/product/presentation/list/state/product_list_state.dart';
import 'package:point_x/feature/product/presentation/list/widgets/main_list.dart';

class ProductListScreen extends HookConsumerWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productListControllerProvider);

    return Scaffold(
      body: SafeArea(
        child: state.when(
          initial: () => Center(child: CircularProgressIndicator()),
          initialized: (data, productCategories, currentSlugCategory) =>
              ProductMainList(
                productListData: data,
                productCategories: productCategories,
                currentSlugCategory: currentSlugCategory,
              ),
        ),
      ),

      backgroundColor: Theme.of(context).colorScheme.onPrimary,
    );
  }
}
