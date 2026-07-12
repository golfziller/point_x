import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    required int id,
    required String title,
    required String description,
    required double price,
    required double rating,
    required List<String> images,
  }) = _Product;
}

@freezed
abstract class ProductGetAllList with _$ProductGetAllList {
  const factory ProductGetAllList({
    required List<Product> products,
    required int total,
    required int skip,
    required int limit,
  }) = _ProductGetAllList;
}
