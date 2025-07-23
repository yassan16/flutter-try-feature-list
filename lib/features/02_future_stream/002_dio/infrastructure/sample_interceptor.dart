import 'package:dio/dio.dart';

class SampleInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('===== Sample Request =====');
    print('SampleInterceptor が呼び出されました');
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('===== Sample Response =====');
    print('SampleInterceptor が呼び出されました');
    return handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    print('Sample Error: ${err.message}');
    return handler.next(err);
  }
}
