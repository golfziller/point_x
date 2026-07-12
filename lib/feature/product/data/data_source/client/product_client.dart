import 'package:dio/dio.dart';
import 'package:point_x/feature/product/data/models/product_category_response.dart';
import 'package:point_x/feature/product/data/models/product_detail.dart';
import 'package:point_x/feature/product/data/models/product_get_all.dart';
import 'package:point_x/feature/product/data/models/product_get_all_request.dart';
import 'package:retrofit/retrofit.dart';

part 'product_client.g.dart';

@RestApi()
abstract class ProductClient {
  factory ProductClient(Dio dio, {String baseUrl}) = _ProductClient;

  @GET('/products')
  Future<ProductGetAll> getAllList(@Queries() ProductGetAllRequest query);

  @GET('/products/search')
  Future<ProductGetAll> searchProductList(
    @Queries() ProductGetAllRequest query,
  );

  @GET('/products/{id}')
  Future<ProductDetail> getProduct(@Path('id') String id);

  @GET('/products/categories')
  Future<List<ProductCategoryResponse>> getProductCategory();

  @GET('/products/category/{slug}')
  Future<ProductGetAll> getProductsByCategory(
    @Path('slug') String slug,
    @Queries() ProductGetAllRequest query,
  );
}
