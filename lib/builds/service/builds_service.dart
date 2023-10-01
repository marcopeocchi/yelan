import 'package:fpdart/fpdart.dart';
import 'package:yelan/builds/model/character.dart';
import 'package:yelan/core/elements.dart';
import 'package:yelan/core/failures.dart';

abstract interface class BuildsService {
  TaskEither<Failure, List<Character>> getByElement(GenshinElement element);
}
