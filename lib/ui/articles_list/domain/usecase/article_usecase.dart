import 'package:dartz/dartz.dart';
import 'package:simpsonsviewer/core/api_error.dart';

import '../../data/model/character_response.dart';

abstract class ArticleUseCase {
  Future<Either<ApiError, CharacterResponse>> requestNews();
}
