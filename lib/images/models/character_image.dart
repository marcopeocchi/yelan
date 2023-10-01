import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_image.freezed.dart';
part 'character_image.g.dart';

@freezed
class CharacterImage with _$CharacterImage {
  const factory CharacterImage({
    required String query,
    required List<String> result,
  }) = _CharacterImage;

  factory CharacterImage.fromJson(Map<String, dynamic> json) =>
      _$CharacterImageFromJson(json);
}
