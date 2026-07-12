import 'package:point_x/core/network/client/api_client.dart';
import 'package:point_x/feature/product/data/data_source/client/product_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_api_provider.g.dart';

@riverpod
ProductClient productApi(Ref ref) {
  final apiClient = ref.watch(apiClientProvider.notifier);
  return ProductClient(apiClient.dio);
}
