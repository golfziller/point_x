import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:point_x/feature/product/data/models/product_detail.dart';

part 'product_get_all.freezed.dart';
part 'product_get_all.g.dart';

@freezed
abstract class ProductGetAll with _$ProductGetAll {
  const factory ProductGetAll({
    required List<ProductDetail> products,
    required int limit,
    required int skip,
    required int total,
  }) = _ProductGetAll;

  factory ProductGetAll.fromJson(Map<String, dynamic> json) =>
      _$ProductGetAllFromJson(json);
}
