import 'package:point_x/feature/product/data/models/product_category_response.dart';
import 'package:point_x/feature/product/data/models/product_detail.dart';
import 'package:point_x/feature/product/data/models/product_get_all.dart';
import 'package:point_x/feature/product/data/models/product_get_all_request.dart';
import 'package:point_x/feature/product/domain/entities/product.dart';
import 'package:point_x/feature/product/domain/entities/product_category.dart';
import 'package:point_x/feature/product/domain/entities/product_query.dart';

extension ProductDetailMapper on ProductDetail {
  Product toDomain() => Product(
    id: id,
    title: title,
    description: description,
    price: price,
    rating: rating,
    images: images,
  );
}

extension ProductGetAllResponseMapper on ProductGetAll {
  ProductGetAllList toDomain() => ProductGetAllList(
    products: products.map((e) => e.toDomain()).toList(),
    skip: skip,
    total: total,
    limit: limit,
  );
}

extension ProductCategoriesResponseMapper on List<ProductCategoryResponse> {
  List<ProductCategory> toDomain() {
    return map(
      (response) => ProductCategory(slug: response.slug, name: response.name),
    ).toList();
  }
}

extension ProductQueryMapper on ProductQuery {
  ProductGetAllRequest toRequest() => ProductGetAllRequest(
    limit: limit,
    skip: skip,
    order: order,
    sortBy: sortBy,
    q: q,
  );
}
