import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../common/api_constant.dart';
import '../core/interceptors.dart';

@module
abstract class AppModule {
  @singleton
  Dio get dio => _dio();

  Dio _dio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        contentType: 'application/json',
        followRedirects: false,
        validateStatus: (status) {
          return status! < 500;
        },
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );
    dio.interceptors.add(requestInterceptor(dio));
    return dio;
  }
}
