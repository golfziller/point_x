import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_detail.freezed.dart';
part 'product_detail.g.dart';

@freezed
abstract class ProductDetail with _$ProductDetail {
  const factory ProductDetail({
    required String title,
    required int id,
    required double rating,
    required double price,
    required String description,
    required List<String> images,
  }) = _ProductDetail;

  factory ProductDetail.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailFromJson(json);
}
