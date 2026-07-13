import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_detail_response.freezed.dart';
part 'product_detail_response.g.dart';

@freezed
abstract class ProductDetailResponse with _$ProductDetailResponse {
  const factory ProductDetailResponse({
    required String title,
    required int id,
    required double rating,
    required double price,
    required String description,
    required List<String> images,
  }) = _ProductDetailResponse;

  factory ProductDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailResponseFromJson(json);
}
