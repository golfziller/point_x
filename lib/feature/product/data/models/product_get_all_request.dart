import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_get_all_request.freezed.dart';
part 'product_get_all_request.g.dart';

@freezed
abstract class ProductGetAllRequest with _$ProductGetAllRequest {
  const factory ProductGetAllRequest({
    @Default("asc") String order,
    @Default(20) int limit,
    required int skip,
    @Default('title') String sortBy,
    @Default("title,price,description,rating,images,id") String select,
    @Default('') String q,
  }) = _ProductGetAllRequest;

  factory ProductGetAllRequest.fromJson(Map<String, dynamic> json) =>
      _$ProductGetAllRequestFromJson(json);
}
