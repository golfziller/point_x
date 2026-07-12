import 'dart:async';

import 'package:point_x/feature/product/data/data_source/client/product_client.dart';
import 'package:point_x/feature/product/data/extension/product_mapper.dart';
import 'package:point_x/feature/product/domain/entities/product.dart';
import 'package:point_x/feature/product/domain/entities/product_category.dart';
import 'package:point_x/feature/product/domain/entities/product_query.dart';
import 'package:point_x/feature/product/domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  ProductRepositoryImpl({required ProductClient productClient})
    : _api = productClient;

  late final ProductClient _api;

  @override
  Future<Product> getProductDetail(String id) async {
    final response = await _api.getProduct(id);
    return response.toDomain();
  }

  @override
  Future<ProductGetAllList> getAllList(ProductQuery query) async {
    final response = await _api.getAllList(query.toRequest());
    return response.toDomain();
  }

  @override
  Future<List<ProductCategory>> getProductCategory() async {
    final response = await _api.getProductCategory();

    return response.toDomain();
  }

  @override
  Future<ProductGetAllList> searchList(ProductQuery query) async {
    final response = await _api.searchProductList(query.toRequest());
    return response.toDomain();
  }

  @override
  Future<ProductGetAllList> getProductsByCategory(
    String slug,
    ProductQuery query,
  ) async {
    final response = await _api.getProductsByCategory(slug, query.toRequest());
    return response.toDomain();
  }
}
