import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:point_x/feature/product/domain/entities/product.dart';

part 'product_detail_state.freezed.dart';

@freezed
abstract class ProductDetailState with _$ProductDetailState {
  const factory ProductDetailState.initial() = _Initial;
  const factory ProductDetailState.error() = _Error;
  const factory ProductDetailState.initialized({required Product products}) =
      _ProductDetailState;
}
