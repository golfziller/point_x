import 'dart:async';

import 'package:point_x/core/helper/either_mini.dart';
import 'package:point_x/core/helper/failure.dart';
import 'package:point_x/feature/product/data/repositories/provider/product_repository_provider.dart';
import 'package:point_x/feature/product/domain/config/cache_config.dart';
import 'package:point_x/feature/product/domain/entities/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'load_product_detail_usecase.g.dart';

@riverpod
Future<Either<Failure, Product>> loadProductDetailUseCase(
  Ref ref, {
  required String id,
}) async {
  final link = ref.keepAlive();
  Timer(CacheConfig.productDetail, link.close);
  try {
    final res = await ref.read(productRepositoryProvider).getProductDetail(id);
    return right(res);
  } catch (e) {
    link.close();
    return left(Failure(message: e.toString()));
  }
}
