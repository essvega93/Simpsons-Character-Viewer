import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:simpsonsviewer/core/api_error.dart';
import 'package:simpsonsviewer/ui/articles_list/data/model/character_response.dart';
import 'package:simpsonsviewer/ui/articles_list/data/model/topic.dart';
import 'package:simpsonsviewer/ui/articles_list/domain/repository/article_repo.dart';
import 'package:simpsonsviewer/ui/articles_list/domain/usecase/article_usecase_impl.dart';

import 'article_usecase_impl_test.mocks.dart';

class MockArticleRepo extends Mock implements ArticleRepo {}

@GenerateMocks(<Type>[MockArticleRepo])
void main() {
  late MockMockArticleRepo mockRepo;
  late final List<Topic> articles = <Topic>[
    Topic(firstURL: "url", icon: IconResp(height: '', uRL: "image", width: ''), text: "title", result: "desc")
  ];

  setUp(() {
    mockRepo = MockMockArticleRepo();
  });

  test('request should fetch data', () async {
    when(mockRepo.requestNews()).thenAnswer((_) async => right(CharacterResponse(articles)));
    final ArticleUseCaseImpl articleRepo = ArticleUseCaseImpl(mockRepo);
    final Either<ApiError, CharacterResponse> response = await articleRepo.requestNews();
    expect(articles, response.toOption().toNullable()?.relatedTopics);
  });

  test('request should return error when repo throw an exception', () async {
    when(mockRepo.requestNews()).thenAnswer((_) async => left(const ApiError.httpUnAuthorizedError()));
    final ArticleUseCaseImpl articleRepo = ArticleUseCaseImpl(mockRepo);
    final Either<ApiError, CharacterResponse> response = await articleRepo.requestNews();
    assert(response.isLeft());
  });
}
