// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Topic _$TopicFromJson(Map<String, dynamic> json) => Topic(
      firstURL: json['FirstURL'] as String? ?? '',
      icon: json['Icon'] == null ? null : IconResp.fromJson(json['Icon'] as Map<String, dynamic>),
      result: json['Result'] as String? ?? '',
      text: json['Text'] as String? ?? '',
    );

Map<String, dynamic> _$TopicToJson(Topic instance) => <String, dynamic>{
      'FirstURL': instance.firstURL,
      'Icon': instance.icon,
      'Result': instance.result,
      'Text': instance.text,
    };

IconResp _$IconRespFromJson(Map<String, dynamic> json) => IconResp(
      height: json['Height'] as String? ?? '',
      uRL: json['URL'] as String? ?? '',
      width: json['Width'] as String? ?? '',
    );

Map<String, dynamic> _$IconRespToJson(IconResp instance) => <String, dynamic>{
      'Height': instance.height,
      'URL': instance.uRL,
      'Width': instance.width,
    };
