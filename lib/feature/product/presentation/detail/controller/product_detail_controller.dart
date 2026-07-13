import 'dart:async';

import 'package:point_x/feature/product/domain/usecase/load_product_detail_usecase.dart';
import 'package:point_x/feature/product/presentation/detail/state/product_detail_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_detail_controller.g.dart';

@riverpod
class ProductDetailController extends _$ProductDetailController {
  @override
  ProductDetailState build(String id) {
    Future(() => _initial(id));
    return const ProductDetailState.initial();
  }

  Future<void> _initial(String id) async {
    await _loadProduct(id);
  }

  Future<void> _loadProduct(String id) async {
    final res = await ref.read(loadProductDetailUseCaseProvider(id: id).future);
    if (!ref.mounted) {
      return;
    }
    if (res.isSuccess) {
      state = ProductDetailState.initialized(products: res.getValueSuccess());
    } else {
      state = ProductDetailState.error();
    }
  }
}
