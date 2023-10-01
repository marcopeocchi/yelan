// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Character _$CharacterFromJson(Map<String, dynamic> json) {
  return _Character.fromJson(json);
}

/// @nodoc
mixin _$Character {
  String? get name => throw _privateConstructorUsedError;
  List<Build> get builds => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterCopyWith<Character> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterCopyWith<$Res> {
  factory $CharacterCopyWith(Character value, $Res Function(Character) then) =
      _$CharacterCopyWithImpl<$Res, Character>;
  @useResult
  $Res call({String? name, List<Build> builds, String? notes});
}

/// @nodoc
class _$CharacterCopyWithImpl<$Res, $Val extends Character>
    implements $CharacterCopyWith<$Res> {
  _$CharacterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? builds = null,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      builds: null == builds
          ? _value.builds
          : builds // ignore: cast_nullable_to_non_nullable
              as List<Build>,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterImplCopyWith<$Res>
    implements $CharacterCopyWith<$Res> {
  factory _$$CharacterImplCopyWith(
          _$CharacterImpl value, $Res Function(_$CharacterImpl) then) =
      __$$CharacterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, List<Build> builds, String? notes});
}

/// @nodoc
class __$$CharacterImplCopyWithImpl<$Res>
    extends _$CharacterCopyWithImpl<$Res, _$CharacterImpl>
    implements _$$CharacterImplCopyWith<$Res> {
  __$$CharacterImplCopyWithImpl(
      _$CharacterImpl _value, $Res Function(_$CharacterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? builds = null,
    Object? notes = freezed,
  }) {
    return _then(_$CharacterImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      builds: null == builds
          ? _value._builds
          : builds // ignore: cast_nullable_to_non_nullable
              as List<Build>,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterImpl implements _Character {
  const _$CharacterImpl(
      {this.name, required final List<Build> builds, this.notes})
      : _builds = builds;

  factory _$CharacterImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterImplFromJson(json);

  @override
  final String? name;
  final List<Build> _builds;
  @override
  List<Build> get builds {
    if (_builds is EqualUnmodifiableListView) return _builds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_builds);
  }

  @override
  final String? notes;

  @override
  String toString() {
    return 'Character(name: $name, builds: $builds, notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._builds, _builds) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_builds), notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterImplCopyWith<_$CharacterImpl> get copyWith =>
      __$$CharacterImplCopyWithImpl<_$CharacterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterImplToJson(
      this,
    );
  }
}

abstract class _Character implements Character {
  const factory _Character(
      {final String? name,
      required final List<Build> builds,
      final String? notes}) = _$CharacterImpl;

  factory _Character.fromJson(Map<String, dynamic> json) =
      _$CharacterImpl.fromJson;

  @override
  String? get name;
  @override
  List<Build> get builds;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$CharacterImplCopyWith<_$CharacterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Build _$BuildFromJson(Map<String, dynamic> json) {
  return _Build.fromJson(json);
}

/// @nodoc
mixin _$Build {
  String get role => throw _privateConstructorUsedError;
  List<String> get equipment => throw _privateConstructorUsedError;
  List<String> get artifacts => throw _privateConstructorUsedError;
  List<String> get artifactsSubStats => throw _privateConstructorUsedError;
  ArtifactsMainStats get artifactsMainStats =>
      throw _privateConstructorUsedError;
  List<String> get talentPriority => throw _privateConstructorUsedError;
  bool get optimal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuildCopyWith<Build> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildCopyWith<$Res> {
  factory $BuildCopyWith(Build value, $Res Function(Build) then) =
      _$BuildCopyWithImpl<$Res, Build>;
  @useResult
  $Res call(
      {String role,
      List<String> equipment,
      List<String> artifacts,
      List<String> artifactsSubStats,
      ArtifactsMainStats artifactsMainStats,
      List<String> talentPriority,
      bool optimal});

  $ArtifactsMainStatsCopyWith<$Res> get artifactsMainStats;
}

/// @nodoc
class _$BuildCopyWithImpl<$Res, $Val extends Build>
    implements $BuildCopyWith<$Res> {
  _$BuildCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? equipment = null,
    Object? artifacts = null,
    Object? artifactsSubStats = null,
    Object? artifactsMainStats = null,
    Object? talentPriority = null,
    Object? optimal = null,
  }) {
    return _then(_value.copyWith(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      equipment: null == equipment
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as List<String>,
      artifacts: null == artifacts
          ? _value.artifacts
          : artifacts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      artifactsSubStats: null == artifactsSubStats
          ? _value.artifactsSubStats
          : artifactsSubStats // ignore: cast_nullable_to_non_nullable
              as List<String>,
      artifactsMainStats: null == artifactsMainStats
          ? _value.artifactsMainStats
          : artifactsMainStats // ignore: cast_nullable_to_non_nullable
              as ArtifactsMainStats,
      talentPriority: null == talentPriority
          ? _value.talentPriority
          : talentPriority // ignore: cast_nullable_to_non_nullable
              as List<String>,
      optimal: null == optimal
          ? _value.optimal
          : optimal // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArtifactsMainStatsCopyWith<$Res> get artifactsMainStats {
    return $ArtifactsMainStatsCopyWith<$Res>(_value.artifactsMainStats,
        (value) {
      return _then(_value.copyWith(artifactsMainStats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BuildImplCopyWith<$Res> implements $BuildCopyWith<$Res> {
  factory _$$BuildImplCopyWith(
          _$BuildImpl value, $Res Function(_$BuildImpl) then) =
      __$$BuildImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String role,
      List<String> equipment,
      List<String> artifacts,
      List<String> artifactsSubStats,
      ArtifactsMainStats artifactsMainStats,
      List<String> talentPriority,
      bool optimal});

  @override
  $ArtifactsMainStatsCopyWith<$Res> get artifactsMainStats;
}

/// @nodoc
class __$$BuildImplCopyWithImpl<$Res>
    extends _$BuildCopyWithImpl<$Res, _$BuildImpl>
    implements _$$BuildImplCopyWith<$Res> {
  __$$BuildImplCopyWithImpl(
      _$BuildImpl _value, $Res Function(_$BuildImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? equipment = null,
    Object? artifacts = null,
    Object? artifactsSubStats = null,
    Object? artifactsMainStats = null,
    Object? talentPriority = null,
    Object? optimal = null,
  }) {
    return _then(_$BuildImpl(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      equipment: null == equipment
          ? _value._equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as List<String>,
      artifacts: null == artifacts
          ? _value._artifacts
          : artifacts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      artifactsSubStats: null == artifactsSubStats
          ? _value._artifactsSubStats
          : artifactsSubStats // ignore: cast_nullable_to_non_nullable
              as List<String>,
      artifactsMainStats: null == artifactsMainStats
          ? _value.artifactsMainStats
          : artifactsMainStats // ignore: cast_nullable_to_non_nullable
              as ArtifactsMainStats,
      talentPriority: null == talentPriority
          ? _value._talentPriority
          : talentPriority // ignore: cast_nullable_to_non_nullable
              as List<String>,
      optimal: null == optimal
          ? _value.optimal
          : optimal // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BuildImpl implements _Build {
  const _$BuildImpl(
      {required this.role,
      required final List<String> equipment,
      required final List<String> artifacts,
      required final List<String> artifactsSubStats,
      required this.artifactsMainStats,
      required final List<String> talentPriority,
      required this.optimal})
      : _equipment = equipment,
        _artifacts = artifacts,
        _artifactsSubStats = artifactsSubStats,
        _talentPriority = talentPriority;

  factory _$BuildImpl.fromJson(Map<String, dynamic> json) =>
      _$$BuildImplFromJson(json);

  @override
  final String role;
  final List<String> _equipment;
  @override
  List<String> get equipment {
    if (_equipment is EqualUnmodifiableListView) return _equipment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_equipment);
  }

  final List<String> _artifacts;
  @override
  List<String> get artifacts {
    if (_artifacts is EqualUnmodifiableListView) return _artifacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artifacts);
  }

  final List<String> _artifactsSubStats;
  @override
  List<String> get artifactsSubStats {
    if (_artifactsSubStats is EqualUnmodifiableListView)
      return _artifactsSubStats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artifactsSubStats);
  }

  @override
  final ArtifactsMainStats artifactsMainStats;
  final List<String> _talentPriority;
  @override
  List<String> get talentPriority {
    if (_talentPriority is EqualUnmodifiableListView) return _talentPriority;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_talentPriority);
  }

  @override
  final bool optimal;

  @override
  String toString() {
    return 'Build(role: $role, equipment: $equipment, artifacts: $artifacts, artifactsSubStats: $artifactsSubStats, artifactsMainStats: $artifactsMainStats, talentPriority: $talentPriority, optimal: $optimal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuildImpl &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality()
                .equals(other._equipment, _equipment) &&
            const DeepCollectionEquality()
                .equals(other._artifacts, _artifacts) &&
            const DeepCollectionEquality()
                .equals(other._artifactsSubStats, _artifactsSubStats) &&
            (identical(other.artifactsMainStats, artifactsMainStats) ||
                other.artifactsMainStats == artifactsMainStats) &&
            const DeepCollectionEquality()
                .equals(other._talentPriority, _talentPriority) &&
            (identical(other.optimal, optimal) || other.optimal == optimal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      role,
      const DeepCollectionEquality().hash(_equipment),
      const DeepCollectionEquality().hash(_artifacts),
      const DeepCollectionEquality().hash(_artifactsSubStats),
      artifactsMainStats,
      const DeepCollectionEquality().hash(_talentPriority),
      optimal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BuildImplCopyWith<_$BuildImpl> get copyWith =>
      __$$BuildImplCopyWithImpl<_$BuildImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BuildImplToJson(
      this,
    );
  }
}

abstract class _Build implements Build {
  const factory _Build(
      {required final String role,
      required final List<String> equipment,
      required final List<String> artifacts,
      required final List<String> artifactsSubStats,
      required final ArtifactsMainStats artifactsMainStats,
      required final List<String> talentPriority,
      required final bool optimal}) = _$BuildImpl;

  factory _Build.fromJson(Map<String, dynamic> json) = _$BuildImpl.fromJson;

  @override
  String get role;
  @override
  List<String> get equipment;
  @override
  List<String> get artifacts;
  @override
  List<String> get artifactsSubStats;
  @override
  ArtifactsMainStats get artifactsMainStats;
  @override
  List<String> get talentPriority;
  @override
  bool get optimal;
  @override
  @JsonKey(ignore: true)
  _$$BuildImplCopyWith<_$BuildImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtifactsMainStats _$ArtifactsMainStatsFromJson(Map<String, dynamic> json) {
  return _ArtifactsMainStats.fromJson(json);
}

/// @nodoc
mixin _$ArtifactsMainStats {
  String? get sands => throw _privateConstructorUsedError;
  String? get goblet => throw _privateConstructorUsedError;
  String? get circlet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtifactsMainStatsCopyWith<ArtifactsMainStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtifactsMainStatsCopyWith<$Res> {
  factory $ArtifactsMainStatsCopyWith(
          ArtifactsMainStats value, $Res Function(ArtifactsMainStats) then) =
      _$ArtifactsMainStatsCopyWithImpl<$Res, ArtifactsMainStats>;
  @useResult
  $Res call({String? sands, String? goblet, String? circlet});
}

/// @nodoc
class _$ArtifactsMainStatsCopyWithImpl<$Res, $Val extends ArtifactsMainStats>
    implements $ArtifactsMainStatsCopyWith<$Res> {
  _$ArtifactsMainStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sands = freezed,
    Object? goblet = freezed,
    Object? circlet = freezed,
  }) {
    return _then(_value.copyWith(
      sands: freezed == sands
          ? _value.sands
          : sands // ignore: cast_nullable_to_non_nullable
              as String?,
      goblet: freezed == goblet
          ? _value.goblet
          : goblet // ignore: cast_nullable_to_non_nullable
              as String?,
      circlet: freezed == circlet
          ? _value.circlet
          : circlet // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtifactsMainStatsImplCopyWith<$Res>
    implements $ArtifactsMainStatsCopyWith<$Res> {
  factory _$$ArtifactsMainStatsImplCopyWith(_$ArtifactsMainStatsImpl value,
          $Res Function(_$ArtifactsMainStatsImpl) then) =
      __$$ArtifactsMainStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? sands, String? goblet, String? circlet});
}

/// @nodoc
class __$$ArtifactsMainStatsImplCopyWithImpl<$Res>
    extends _$ArtifactsMainStatsCopyWithImpl<$Res, _$ArtifactsMainStatsImpl>
    implements _$$ArtifactsMainStatsImplCopyWith<$Res> {
  __$$ArtifactsMainStatsImplCopyWithImpl(_$ArtifactsMainStatsImpl _value,
      $Res Function(_$ArtifactsMainStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sands = freezed,
    Object? goblet = freezed,
    Object? circlet = freezed,
  }) {
    return _then(_$ArtifactsMainStatsImpl(
      sands: freezed == sands
          ? _value.sands
          : sands // ignore: cast_nullable_to_non_nullable
              as String?,
      goblet: freezed == goblet
          ? _value.goblet
          : goblet // ignore: cast_nullable_to_non_nullable
              as String?,
      circlet: freezed == circlet
          ? _value.circlet
          : circlet // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtifactsMainStatsImpl implements _ArtifactsMainStats {
  const _$ArtifactsMainStatsImpl({this.sands, this.goblet, this.circlet});

  factory _$ArtifactsMainStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtifactsMainStatsImplFromJson(json);

  @override
  final String? sands;
  @override
  final String? goblet;
  @override
  final String? circlet;

  @override
  String toString() {
    return 'ArtifactsMainStats(sands: $sands, goblet: $goblet, circlet: $circlet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtifactsMainStatsImpl &&
            (identical(other.sands, sands) || other.sands == sands) &&
            (identical(other.goblet, goblet) || other.goblet == goblet) &&
            (identical(other.circlet, circlet) || other.circlet == circlet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sands, goblet, circlet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtifactsMainStatsImplCopyWith<_$ArtifactsMainStatsImpl> get copyWith =>
      __$$ArtifactsMainStatsImplCopyWithImpl<_$ArtifactsMainStatsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtifactsMainStatsImplToJson(
      this,
    );
  }
}

abstract class _ArtifactsMainStats implements ArtifactsMainStats {
  const factory _ArtifactsMainStats(
      {final String? sands,
      final String? goblet,
      final String? circlet}) = _$ArtifactsMainStatsImpl;

  factory _ArtifactsMainStats.fromJson(Map<String, dynamic> json) =
      _$ArtifactsMainStatsImpl.fromJson;

  @override
  String? get sands;
  @override
  String? get goblet;
  @override
  String? get circlet;
  @override
  @JsonKey(ignore: true)
  _$$ArtifactsMainStatsImplCopyWith<_$ArtifactsMainStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
