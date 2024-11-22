import 'dart:async';
import 'package:dio/dio.dart';
import 'package:piton_test_case/core/constants/api_constants.dart';

part 'dio_service.dart';

final class DioService implements IDioService {
  DioService._() {
    _dio = Dio(_options)
      ..interceptors.add(
        LogInterceptor(),
      );
  }

  static final instance = DioService._();

  static final _options = BaseOptions(
    baseUrl: ApiConstants.instance.baseUrl,
    connectTimeout: ApiConstants.instance.connectTimeout,
    receiveTimeout: ApiConstants.instance.receiveTimeout,
  );

  late final Dio _dio;

  // GET request
  @override
  Future<Response<T>> get<T>(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio.get<T>(
        url,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // POST request
  @override
  Future<Response<T>> post<T>(
    String url, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio.post<T>(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
