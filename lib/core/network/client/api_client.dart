import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_client.g.dart';

@Riverpod(keepAlive: true)
class ApiClient extends _$ApiClient {
  Dio get dio => _dio;
  late final Dio _dio;

  @override
  FutureOr<void> build() async {
    _dio = Dio();
    const String baseUrl = 'https://dummyjson.com';
    const int connectTimeout = 60;
    const int receiveTimeout = 60;

    _dio.options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: connectTimeout),
      receiveTimeout: const Duration(seconds: receiveTimeout),
      headers: {'Content-Type': 'application/json'},
    );
    if (kDebugMode) {
      _dio.interceptors.add(LogInterceptor(responseBody: false));
    }
  }
}
