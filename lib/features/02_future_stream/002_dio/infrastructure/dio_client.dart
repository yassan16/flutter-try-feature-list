import 'package:dio/dio.dart';

class DioClient {
  final Dio dio;

  DioClient() : dio = Dio() {
    //　仮で追記
    // dio.interceptors.add(LogInterceptor(responseBody: true));
  }
}
