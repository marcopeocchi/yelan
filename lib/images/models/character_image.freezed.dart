// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacterImage _$CharacterImageFromJson(Map<String, dynamic> json) {
  return _CharacterImage.fromJson(json);
}

/// @nodoc
mixin _$CharacterImage {
  String get query => throw _privateConstructorUsedError;
  List<String> get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterImageCopyWith<CharacterImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterImageCopyWith<$Res> {
  factory $CharacterImageCopyWith(
          CharacterImage value, $Res Function(CharacterImage) then) =
      _$CharacterImageCopyWithImpl<$Res, CharacterImage>;
  @useResult
  $Res call({String query, List<String> result});
}

/// @nodoc
class _$CharacterImageCopyWithImpl<$Res, $Val extends CharacterImage>
    implements $CharacterImageCopyWith<$Res> {
  _$CharacterImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterImageImplCopyWith<$Res>
    implements $CharacterImageCopyWith<$Res> {
  factory _$$CharacterImageImplCopyWith(_$CharacterImageImpl value,
          $Res Function(_$CharacterImageImpl) then) =
      __$$CharacterImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query, List<String> result});
}

/// @nodoc
class __$$CharacterImageImplCopyWithImpl<$Res>
    extends _$CharacterImageCopyWithImpl<$Res, _$CharacterImageImpl>
    implements _$$CharacterImageImplCopyWith<$Res> {
  __$$CharacterImageImplCopyWithImpl(
      _$CharacterImageImpl _value, $Res Function(_$CharacterImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? result = null,
  }) {
    return _then(_$CharacterImageImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterImageImpl implements _CharacterImage {
  const _$CharacterImageImpl(
      {required this.query, required final List<String> result})
      : _result = result;

  factory _$CharacterImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterImageImplFromJson(json);

  @override
  final String query;
  final List<String> _result;
  @override
  List<String> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'CharacterImage(query: $query, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterImageImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, query, const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterImageImplCopyWith<_$CharacterImageImpl> get copyWith =>
      __$$CharacterImageImplCopyWithImpl<_$CharacterImageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterImageImplToJson(
      this,
    );
  }
}

abstract class _CharacterImage implements CharacterImage {
  const factory _CharacterImage(
      {required final String query,
      required final List<String> result}) = _$CharacterImageImpl;

  factory _CharacterImage.fromJson(Map<String, dynamic> json) =
      _$CharacterImageImpl.fromJson;

  @override
  String get query;
  @override
  List<String> get result;
  @override
  @JsonKey(ignore: true)
  _$$CharacterImageImplCopyWith<_$CharacterImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
