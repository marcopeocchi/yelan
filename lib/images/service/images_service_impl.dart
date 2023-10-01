import 'package:fpdart/fpdart.dart';
import 'package:yelan/core/failures.dart';
import 'package:yelan/images/repository/images_repository.dart';
import 'package:yelan/images/service/images_service.dart';

class ImagesServiceImpl implements ImagesService {
  final ImagesRepository repository;

  const ImagesServiceImpl(this.repository);

  @override
  TaskEither<Failure, String> getImagesByName(String name) {
    return repository.getImagesByName(name).flatMap(repository.cacheImage);
  }
}
