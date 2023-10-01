// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterImageImpl _$$CharacterImageImplFromJson(Map<String, dynamic> json) =>
    _$CharacterImageImpl(
      query: json['query'] as String,
      result:
          (json['result'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$CharacterImageImplToJson(
        _$CharacterImageImpl instance) =>
    <String, dynamic>{
      'query': instance.query,
      'result': instance.result,
    };
