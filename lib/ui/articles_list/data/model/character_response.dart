import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simpsonsviewer/ui/articles_list/data/model/topic.dart';

part 'character_response.g.dart';

@JsonSerializable()
class CharacterResponse {
  CharacterResponse(this.relatedTopics);

  factory CharacterResponse.fromJson(Map<String, dynamic> json) =>
      _$CharacterResponseFromJson(json);
  @JsonKey(name: 'RelatedTopics')
  final List<Topic> relatedTopics;
  Map<String, dynamic> toJson() => _$CharacterResponseToJson(this);
}
