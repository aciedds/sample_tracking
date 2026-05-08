import 'package:dio/dio.dart';

/// Dio configuration for the network requests.
class DioConfig {
  DioConfig({
    required String baseUrl,
    Duration connectTimeout = const Duration(seconds: 30),
    Duration receiveTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
  }) : _dio = Dio(
          BaseOptions(
            baseUrl: baseUrl,
            connectTimeout: connectTimeout,
            receiveTimeout: receiveTimeout,
            headers: headers,
            responseType: ResponseType.json,
            contentType: Headers.jsonContentType,
          ),
        );

  final Dio _dio;

  Dio get client => _dio;
}