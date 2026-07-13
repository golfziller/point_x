import 'dart:async';

import 'package:point_x/core/helper/either_mini.dart';
import 'package:point_x/core/helper/failure.dart';
import 'package:point_x/feature/product/data/repositories/provider/product_repository_provider.dart';
import 'package:point_x/feature/product/domain/config/cache_config.dart';
import 'package:point_x/feature/product/domain/entities/product_category.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'load_product_category_usecase.g.dart';

@riverpod
Future<Either<Failure, List<ProductCategory>>> loadProductCategoryUseCase(
  Ref ref,
) async {
  final link = ref.keepAlive();
  Timer(CacheConfig.productCategory, link.close);
  try {
    final res = await ref.read(productRepositoryProvider).getProductCategory();
    return right(res);
  } catch (e) {
    link.close();
    return left(Failure(message: e.toString()));
  }
}
