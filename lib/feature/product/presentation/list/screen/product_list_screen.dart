import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:point_x/feature/product/presentation/list/controller/product_list_controller.dart';
import 'package:point_x/feature/product/presentation/list/state/product_list_state.dart';
import 'package:point_x/feature/product/presentation/list/widgets/main_list.dart';
import 'package:point_x/shared/widgets/error/error_try_again.dart';
import 'package:point_x/shared/widgets/initial_loading/initial_loading.dart';

class ProductListScreen extends HookConsumerWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productListControllerProvider);

    return Scaffold(
      body: SafeArea(
        child: state.when(
          error: () => ErrorTryAgain(
            onTryAgain: () {
              ref.invalidate(productListControllerProvider, asReload: true);
            },
          ),
          initial: () => InitialLoading(),
          initialized: (data, productCategories, currentProductCategory) =>
              ProductMainList(
                productListData: data,
                productCategories: productCategories,
                currentSelectedCategory: currentProductCategory,
              ),
        ),
      ),

      backgroundColor: Theme.of(context).colorScheme.onPrimary,
    );
  }
}
