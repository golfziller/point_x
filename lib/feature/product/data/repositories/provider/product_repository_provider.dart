import 'package:point_x/feature/product/data/data_source/provider/product_api_provider.dart';
import 'package:point_x/feature/product/data/repositories/impl/product_repository_impl.dart';
import 'package:point_x/feature/product/domain/repositories/product_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_repository_provider.g.dart';

@riverpod
ProductRepository productRepository(Ref ref) {
  return ProductRepositoryImpl(productClient: ref.read(productApiProvider));
}
