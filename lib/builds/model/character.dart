import 'package:freezed_annotation/freezed_annotation.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
sealed class Character with _$Character {
  const factory Character({
    String? name,
    required List<Build> builds,
    String? notes,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
}

@freezed
sealed class Build with _$Build {
  const factory Build({
    required String role,
    required List<String> equipment,
    required List<String> artifacts,
    required List<String> artifactsSubStats,
    required ArtifactsMainStats artifactsMainStats,
    required List<String> talentPriority,
    required bool optimal,
  }) = _Build;

  factory Build.fromJson(Map<String, dynamic> json) => _$BuildFromJson(json);
}

@freezed
sealed class ArtifactsMainStats with _$ArtifactsMainStats {
  const factory ArtifactsMainStats({
    String? sands,
    String? goblet,
    String? circlet,
  }) = _ArtifactsMainStats;

  factory ArtifactsMainStats.fromJson(Map<String, dynamic> json) =>
      _$ArtifactsMainStatsFromJson(json);
}
