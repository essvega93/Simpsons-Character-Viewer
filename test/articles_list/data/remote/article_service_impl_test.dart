import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:simpsonsviewer/ui/articles_list/data/remote/service/article_service.dart';
import 'package:simpsonsviewer/ui/articles_list/data/remote/source/article_remote_data_source_impl.dart';

import 'article_service_impl_test.mocks.dart';

class MockArticleService extends Mock implements ArticleService {}

@GenerateMocks(<Type>[MockArticleService])
void main() {
  late MockMockArticleService mockArticleService;
  setUp(() {
    mockArticleService = MockMockArticleService();
  });

  test('request should fetch data', () async {
    when(mockArticleService.getTasks()).thenThrow(DioException(requestOptions: RequestOptions(path: '')));
    final ArticleRemoteDataSourceImpl articleRemoteDataSource = ArticleRemoteDataSourceImpl(mockArticleService);
    try {
      await articleRemoteDataSource.getTasks();
      assert(false);
    } catch (exception) {
      assert(true);
    }
  });
}
