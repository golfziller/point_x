import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:point_x/core/network/constant/network_constant.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_client.g.dart';

@Riverpod(keepAlive: true)
class ApiClient extends _$ApiClient {
  Dio get dio => _dio;
  late final Dio _dio;

  @override
  FutureOr<void> build() async {
    _dio = Dio();
    const String baseUrl = NetworkConstant.endpoint;
    const int connectTimeout = 60;
    const int receiveTimeout = 60;

    _dio.options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: connectTimeout),
      receiveTimeout: const Duration(seconds: receiveTimeout),
      headers: {
        NetworkConstant.contentTypeHeader: NetworkConstant.contentTypeValue,
      },
    );
    if (kDebugMode) {
      _dio.interceptors.add(LogInterceptor(responseBody: false));
    }
  }
}
