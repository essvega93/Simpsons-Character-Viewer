import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/api_error.dart';
import '../../domain/repository/article_repo.dart';
import '../model/character_response.dart';
import '../remote/source/article_remote_data_source.dart';

@Injectable(as: ArticleRepo)
class ArticleRepoImpl implements ArticleRepo {
  ArticleRepoImpl(this._remoteDataSource);

  final ArticleRemoteDataSource _remoteDataSource;

  @override
  Future<Either<ApiError, CharacterResponse>> requestNews() async {
    try {
      final String result = await _remoteDataSource.getTasks();
      return right(CharacterResponse.fromJson(jsonDecode(result)));
    } on DioException catch (exception) {
      if (exception.type == DioExceptionType.badResponse) {
        final int statusCode = exception.response!.statusCode ?? 503;
        if (statusCode == 401) {
          return left(const ApiError.httpUnAuthorizedError());
        } else {
          return left(HttpInternalServerError(exception.message ?? ''));
        }
      }
      return left(HttpUnknownError(exception.message ?? ''));
    }
  }
}
