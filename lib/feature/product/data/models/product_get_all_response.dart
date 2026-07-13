import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:point_x/feature/product/data/models/product_detail_response.dart';

part 'product_get_all_response.freezed.dart';
part 'product_get_all_response.g.dart';

@freezed
abstract class ProductGetAllResponse with _$ProductGetAllResponse {
  const factory ProductGetAllResponse({
    required List<ProductDetailResponse> products,
    required int limit,
    required int skip,
    required int total,
  }) = _ProductGetAllResponse;

  factory ProductGetAllResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductGetAllResponseFromJson(json);
}
