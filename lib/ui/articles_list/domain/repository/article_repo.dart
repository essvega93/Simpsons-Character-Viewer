import 'package:dartz/dartz.dart';

import '../../../../core/api_error.dart';
import '../../data/model/character_response.dart';

abstract class ArticleRepo {
  Future<Either<ApiError, CharacterResponse>> requestNews();
}
