// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterImpl _$$CharacterImplFromJson(Map<String, dynamic> json) =>
    _$CharacterImpl(
      name: json['name'] as String?,
      builds: (json['builds'] as List<dynamic>)
          .map((e) => Build.fromJson(e as Map<String, dynamic>))
          .toList(),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$CharacterImplToJson(_$CharacterImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'builds': instance.builds,
      'notes': instance.notes,
    };

_$BuildImpl _$$BuildImplFromJson(Map<String, dynamic> json) => _$BuildImpl(
      role: json['role'] as String,
      equipment:
          (json['equipment'] as List<dynamic>).map((e) => e as String).toList(),
      artifacts:
          (json['artifacts'] as List<dynamic>).map((e) => e as String).toList(),
      artifactsSubStats: (json['artifactsSubStats'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      artifactsMainStats: ArtifactsMainStats.fromJson(
          json['artifactsMainStats'] as Map<String, dynamic>),
      talentPriority: (json['talentPriority'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      optimal: json['optimal'] as bool,
    );

Map<String, dynamic> _$$BuildImplToJson(_$BuildImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'equipment': instance.equipment,
      'artifacts': instance.artifacts,
      'artifactsSubStats': instance.artifactsSubStats,
      'artifactsMainStats': instance.artifactsMainStats,
      'talentPriority': instance.talentPriority,
      'optimal': instance.optimal,
    };

_$ArtifactsMainStatsImpl _$$ArtifactsMainStatsImplFromJson(
        Map<String, dynamic> json) =>
    _$ArtifactsMainStatsImpl(
      sands: json['sands'] as String?,
      goblet: json['goblet'] as String?,
      circlet: json['circlet'] as String?,
    );

Map<String, dynamic> _$$ArtifactsMainStatsImplToJson(
        _$ArtifactsMainStatsImpl instance) =>
    <String, dynamic>{
      'sands': instance.sands,
      'goblet': instance.goblet,
      'circlet': instance.circlet,
    };
