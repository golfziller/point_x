import 'package:point_x/feature/product/domain/entities/product.dart';
import 'package:point_x/feature/product/domain/entities/product_category.dart';
import 'package:point_x/feature/product/domain/entities/product_query.dart';

abstract class ProductRepository {
  Future<ProductGetAllList> getAllList(ProductQuery query);
  Future<Product> getProductDetail(String id);
  Future<ProductGetAllList> searchList(ProductQuery query);
  Future<List<ProductCategory>> getProductCategory();
  Future<ProductGetAllList> getProductsByCategory(
    String slug,
    ProductQuery query,
  );
}
