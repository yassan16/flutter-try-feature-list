import 'package:dio/dio.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/infrastructure/fake_error_interceptor.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/infrastructure/logging_Interceptor.dart';
import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/infrastructure/sample_interceptor.dart';

class DioClient {
  final Dio dio;

  DioClient() : dio = Dio() {
    dio.interceptors.add(SampleInterceptor());
    dio.interceptors.add(FakeErrorInterceptor());
    dio.interceptors.add(LoggingInterceptor());
  }
}
