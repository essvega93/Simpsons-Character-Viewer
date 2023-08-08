import 'package:freezed_annotation/freezed_annotation.dart';

part 'topic.g.dart';

@JsonSerializable()
class Topic {
  @JsonKey(name: 'FirstURL', defaultValue: '')
  String? firstURL;
  @JsonKey(name: 'Icon', defaultValue: '')
  IconResp? icon;
  @JsonKey(name: 'Result', defaultValue: '')
  String? result;
  @JsonKey(name: 'Text', defaultValue: '')
  String? text;

  Topic({this.firstURL, this.icon, this.result,this.text});

  factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);

  Map<String, dynamic> toJson() => _$TopicToJson(this);
}
@JsonSerializable()
class IconResp {
  @JsonKey(name: 'Height', defaultValue: '')
  String? height;
  @JsonKey(name: 'URL', defaultValue: '')
  String? uRL;
  @JsonKey(name: 'Width', defaultValue: '')
  String? width;

  IconResp({this.height, this.uRL, this.width});

  factory IconResp.fromJson(Map<String, dynamic> json) => _$IconRespFromJson(json);

  Map<String, dynamic> toJson() => _$IconRespToJson(this);
}