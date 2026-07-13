import 'dart:async';

import 'package:point_x/core/helper/either_mini.dart';
import 'package:point_x/core/helper/failure.dart';
import 'package:point_x/feature/product/data/repositories/provider/product_repository_provider.dart';
import 'package:point_x/feature/product/domain/config/cache_config.dart';
import 'package:point_x/feature/product/domain/entities/product.dart';
import 'package:point_x/feature/product/domain/entities/product_query.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'load_product_by_category_usecase.g.dart';

@riverpod
Future<Either<Failure, ProductGetAllList>> loadProductByCategoryUseCase(
  Ref ref,
  String slug,
  ProductQuery query,
) async {
  final link = ref.keepAlive();
  Timer(CacheConfig.productListByCategory, link.close);
  try {
    final repo = ref.read(productRepositoryProvider);
    final res = await repo.getProductsByCategory(slug, query);
    return right(res);
  } catch (e) {
    link.close();
    return left(Failure(message: e.toString()));
  }
}
