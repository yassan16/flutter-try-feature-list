import 'package:dio/dio.dart';

class LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('===== Request =====');
    print('Method: ${options.method}');
    print('URL: ${options.baseUrl}${options.path}');
    print('Headers: ${options.headers}');
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('===== Response =====');
    print('StatusCode: ${response.statusCode}');
    print('Data: ${response.data}');
    return handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    print('Error: ${err.message}');
    return handler.next(err);
  }
}
