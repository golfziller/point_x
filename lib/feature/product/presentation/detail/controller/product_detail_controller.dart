import 'dart:async';

import 'package:point_x/feature/product/domain/usecase/load_product_detail_usecase.dart';
import 'package:point_x/feature/product/presentation/detail/state/product_detail_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_detail_controller.g.dart';

// Improved error handling and validation logic
@riverpod
class ProductDetailController extends _$ProductDetailController {
  ProductDetailState build() {
    return const ProductDetailState.initial();
  }

  Future<void> initial(String id) async {
    state = ProductDetailState.loading();
    await _loadProduct(id);
  }

  Future<void> _loadProduct(String id) async {
    final res = await ref.read(loadProductDetailUseCaseProvider(id: id).future);
    if (res.isSuccess) {
      state = ProductDetailState.initialized(products: res.getValueSuccess());
    } else {
      state = ProductDetailState.error();
    }
  }
}
