import 'package:dio/dio.dart';

class FakeErrorInterceptor extends Interceptor {
  int _count = 1;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('===== FakeErrorInterceptor Request =====');
    print('FakeErrorInterceptor が呼び出されました');
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('===== FakeErrorInterceptor Response =====');
    print('FakeErrorInterceptor が呼び出されました');
    print('count: $_count');

    if (_count % 3 == 0) {
      return handler.reject(
        DioException.badResponse(
          statusCode: 401,
          requestOptions: response.requestOptions,
          response: Response(
            requestOptions: response.requestOptions,
            statusCode: 401,
            data: 'Fake error が発生しました',
          ),
        ),
      );
    }
    _count++;
    return handler.next(response);
  }
}
