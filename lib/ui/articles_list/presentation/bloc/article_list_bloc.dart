import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api_error.dart';
import '../../data/model/character_response.dart';
import '../../data/model/topic.dart';
import '../../domain/usecase/article_usecase.dart';

part 'article_list_bloc.freezed.dart';

part 'article_list_event.dart';

part 'article_list_state.dart';

@injectable
class ArticleListBloc extends Bloc<ArticleListEvent, ArticleListState> {
  ArticleListBloc(this._articleUseCase) : super(ArticleListState.initial()) {
    on<ArticleListEvent>((ArticleListEvent event, Emitter<ArticleListState> emit) async {
      await event.when(
        loadArticles: () => loadArticles(emit),
      );
    });
  }

  final ArticleUseCase _articleUseCase;

  Future<dynamic> loadArticles(Emitter<ArticleListState> emit) async {
    emit(state.copyWith(isLoading: true, topics: none()));
    final Either<ApiError, CharacterResponse> result = await _articleUseCase.requestNews();
    emit(result.fold((ApiError error) => state.copyWith(isLoading: false, topics: none()),
        (CharacterResponse response) => state.copyWith(isLoading: false, topics: optionOf(response.relatedTopics))));
  }
}
