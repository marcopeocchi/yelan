import 'package:fpdart/fpdart.dart';
import 'package:yelan/core/failures.dart';

abstract interface class ImagesService {
  TaskEither<Failure, String> getImagesByName(String name);
}
