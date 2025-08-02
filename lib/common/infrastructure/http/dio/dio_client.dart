import 'package:dio/dio.dart';
import 'package:flutter_try_feature_list/common/infrastructure/http/dio/fake_error_interceptor.dart';
import 'package:flutter_try_feature_list/common/infrastructure/http/dio/logging_interceptor.dart';

class DioClient {
  // シングルトンインスタンス
  static final DioClient _instance = DioClient._internal();
  // ファクトリコンストラクタで常に同じインスタンスを返す
  factory DioClient() => _instance;

  final Dio dio;

  DioClient._internal() : dio = Dio() {
    print('===== DioClient Initialized =====');
    print('DioClient が初期化されました');
    // dio.interceptors.add(SampleInterceptor());
    dio.interceptors.add(FakeErrorInterceptor());
    dio.interceptors.add(LoggingInterceptor());
  }
}
