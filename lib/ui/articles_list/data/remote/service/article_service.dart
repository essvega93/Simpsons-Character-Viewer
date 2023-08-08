import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'article_service.g.dart';

@RestApi()
@injectable
abstract class ArticleService {
  @GET('?q=simpsons+characters&format=json')
  Future<String> getTasks();

  @factoryMethod
  factory ArticleService(Dio dio) = _ArticleService;
}
