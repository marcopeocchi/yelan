import 'package:fpdart/fpdart.dart';
import 'package:yelan/core/failures.dart';
import 'package:yelan/images/models/character_image.dart';

abstract interface class ImagesRepository {
  TaskEither<Failure, CharacterImage> getImagesByName(String name);
  TaskEither<Failure, String> cacheImage(CharacterImage ci);
}
