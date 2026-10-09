import 'package:dio/dio.dart';
import 'package:my_student_app/core/storage/token_storage.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Dio getDio(TokenStorage tokenStorage) {
    const timeout = Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeout
        ..options.receiveTimeout = timeout;

      addDioHeaders();
      addDioInterceptors(tokenStorage);
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioHeaders() {
    dio?.options.headers = {'Accept': 'application/json'};
  }

  static void addDioInterceptors(TokenStorage tokenStorage) {
    dio?.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await tokenStorage.getToken();
          if (token != null && token.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $token';
          } else {
            options.headers.remove('Authorization');
          }
          return handler.next(options);
        },
      ),
    );

    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: false,
        requestHeader: false,
        responseBody: true,
        responseHeader: false,
      ),
    );
  }
}
