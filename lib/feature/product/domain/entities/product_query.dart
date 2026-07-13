import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_query.freezed.dart';

@freezed
abstract class ProductQuery with _$ProductQuery {
  const factory ProductQuery({
    @Default(0) int skip,
    @Default(20) int limit,
    @Default('asc') String order,
    @Default('title') String sortBy,
    @Default('') String q,
  }) = _ProductQuery;
}
