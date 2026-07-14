import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:point_x/core/constant/product/product_constant.dart';
import 'package:point_x/feature/product/presentation/detail/controller/product_detail_controller.dart';
import 'package:point_x/feature/product/presentation/detail/state/product_detail_state.dart';
import 'package:point_x/feature/product/presentation/detail/widgets/product_detail_main.dart';
import 'package:point_x/shared/widgets/error/error_try_again.dart';
import 'package:point_x/shared/widgets/initial_loading/initial_loading.dart';

class ProductDetailScreen extends HookConsumerWidget {
  final String id;
  const ProductDetailScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productDetailControllerProvider(id));

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;
        final canPop = state.maybeMap(
          orElse: () => true,
          initial: (v) => false,
        );
        if (canPop && context.canPop()) {
          context.pop();
        }
      },

      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        appBar: AppBar(
          title: Text(
            ProductConstant.titleProductDetail,
            style: Theme.of(
              context,
            ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
          ),
          iconTheme: IconThemeData(
            color: Theme.of(context).colorScheme.onSecondaryContainer,
          ),
          backgroundColor: Theme.of(context).colorScheme.onPrimary,
        ),
        body: state.when(
          error: () => ErrorTryAgain(
            onTryAgain: () => {
              ref.invalidate(productDetailControllerProvider, asReload: true),
            },
          ),
          initial: () => InitialLoading(),
          initialized: (product) => ProductDetailMain(product: product),
        ),
      ),
    );
  }
}
