import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

InterceptorsWrapper requestInterceptor(Dio dio) => InterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler requestHandler) async {
        final uri = options.uri.toString();
        log('Api Base Url $uri');
        log('Api header  ${options.headers}');
        log('Api date  ${options.data}');
        debugPrint('Api - URL: $uri');
        debugPrint('Api - Request Body: ${options.data}');
        debugPrint('Api - Request header: ${options.headers}');
        return requestHandler.next(options);
      },
      onResponse: (Response response, ResponseInterceptorHandler requestHandler) {
        debugPrint('response $response');
        debugPrint('response code ${response.statusCode}');
        if (response.statusCode == 200 || response.statusCode == 201) {
          return requestHandler.next(response);
        } else {
          handleErrorStatus(response, response.requestOptions);
        }
      },
      onError: (DioException e, ErrorInterceptorHandler handler) {
        debugPrint('##########-----ERROR----#######');
        debugPrint('$e');
        handleErrorStatus(e.response, e.response?.requestOptions);
        // handler.next(e);
      },
    );

void handleErrorStatus(Response? response, RequestOptions? requestOptions) {
  debugPrint('Error Code = ${response?.statusCode}');
  switch (response?.statusCode ?? 403) {
    case 403:
      // handle api response
      break;
    default:
      break;
  }
  return;
}
