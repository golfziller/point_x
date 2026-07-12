import 'dart:async';

import 'package:point_x/core/helper/either_mini.dart';
import 'package:point_x/core/helper/failure.dart';
import 'package:point_x/feature/product/data/repositories/provider/product_repository_provider.dart';
import 'package:point_x/feature/product/domain/config/cache_config.dart';
import 'package:point_x/feature/product/domain/entities/product.dart';
import 'package:point_x/feature/product/domain/entities/product_query.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_product_list_usecase.g.dart';

@riverpod
Future<Either<Failure, ProductGetAllList>> searchProductListUseCase(
  Ref ref,
  ProductQuery query,
) async {
  final link = ref.keepAlive();
  Timer(CacheConfig.productList, link.close);
  try {
    final repo = ref.read(productRepositoryProvider);
    final res = await repo.searchList(query);
    return right(res);
  } catch (e) {
    return left(Failure(message: e.toString()));
  }
}
