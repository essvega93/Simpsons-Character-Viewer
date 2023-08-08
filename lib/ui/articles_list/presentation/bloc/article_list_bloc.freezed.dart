// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticleListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadArticles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadArticles value) loadArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadArticles value)? loadArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadArticles value)? loadArticles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleListEventCopyWith<$Res> {
  factory $ArticleListEventCopyWith(
          ArticleListEvent value, $Res Function(ArticleListEvent) then) =
      _$ArticleListEventCopyWithImpl<$Res, ArticleListEvent>;
}

/// @nodoc
class _$ArticleListEventCopyWithImpl<$Res, $Val extends ArticleListEvent>
    implements $ArticleListEventCopyWith<$Res> {
  _$ArticleListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadArticlesCopyWith<$Res> {
  factory _$$LoadArticlesCopyWith(
          _$LoadArticles value, $Res Function(_$LoadArticles) then) =
      __$$LoadArticlesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadArticlesCopyWithImpl<$Res>
    extends _$ArticleListEventCopyWithImpl<$Res, _$LoadArticles>
    implements _$$LoadArticlesCopyWith<$Res> {
  __$$LoadArticlesCopyWithImpl(
      _$LoadArticles _value, $Res Function(_$LoadArticles) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadArticles implements LoadArticles {
  const _$LoadArticles();

  @override
  String toString() {
    return 'ArticleListEvent.loadArticles()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadArticles);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadArticles,
  }) {
    return loadArticles();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadArticles,
  }) {
    return loadArticles?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadArticles,
    required TResult orElse(),
  }) {
    if (loadArticles != null) {
      return loadArticles();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadArticles value) loadArticles,
  }) {
    return loadArticles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadArticles value)? loadArticles,
  }) {
    return loadArticles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadArticles value)? loadArticles,
    required TResult orElse(),
  }) {
    if (loadArticles != null) {
      return loadArticles(this);
    }
    return orElse();
  }
}

abstract class LoadArticles implements ArticleListEvent {
  const factory LoadArticles() = _$LoadArticles;
}

/// @nodoc
mixin _$ArticleListState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<List<Topic>> get topics => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleListStateCopyWith<ArticleListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleListStateCopyWith<$Res> {
  factory $ArticleListStateCopyWith(
          ArticleListState value, $Res Function(ArticleListState) then) =
      _$ArticleListStateCopyWithImpl<$Res, ArticleListState>;
  @useResult
  $Res call({bool isLoading, Option<List<Topic>> topics});
}

/// @nodoc
class _$ArticleListStateCopyWithImpl<$Res, $Val extends ArticleListState>
    implements $ArticleListStateCopyWith<$Res> {
  _$ArticleListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? topics = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as Option<List<Topic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArticleListStateCopyWith<$Res>
    implements $ArticleListStateCopyWith<$Res> {
  factory _$$_ArticleListStateCopyWith(
          _$_ArticleListState value, $Res Function(_$_ArticleListState) then) =
      __$$_ArticleListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, Option<List<Topic>> topics});
}

/// @nodoc
class __$$_ArticleListStateCopyWithImpl<$Res>
    extends _$ArticleListStateCopyWithImpl<$Res, _$_ArticleListState>
    implements _$$_ArticleListStateCopyWith<$Res> {
  __$$_ArticleListStateCopyWithImpl(
      _$_ArticleListState _value, $Res Function(_$_ArticleListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? topics = null,
  }) {
    return _then(_$_ArticleListState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as Option<List<Topic>>,
    ));
  }
}

/// @nodoc

class _$_ArticleListState implements _ArticleListState {
  const _$_ArticleListState({this.isLoading = false, required this.topics});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Option<List<Topic>> topics;

  @override
  String toString() {
    return 'ArticleListState(isLoading: $isLoading, topics: $topics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleListState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.topics, topics) || other.topics == topics));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, topics);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleListStateCopyWith<_$_ArticleListState> get copyWith =>
      __$$_ArticleListStateCopyWithImpl<_$_ArticleListState>(this, _$identity);
}

abstract class _ArticleListState implements ArticleListState {
  const factory _ArticleListState(
      {final bool isLoading,
      required final Option<List<Topic>> topics}) = _$_ArticleListState;

  @override
  bool get isLoading;
  @override
  Option<List<Topic>> get topics;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleListStateCopyWith<_$_ArticleListState> get copyWith =>
      throw _privateConstructorUsedError;
}
