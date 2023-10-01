import 'package:fpdart/fpdart.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:yelan/builds/model/character.dart';
import 'package:yelan/builds/repository/builds_local_repository.dart';
import 'package:yelan/builds/repository/builds_remote_repository.dart';
import 'package:yelan/builds/service/builds_service.dart';
import 'package:yelan/core/elements.dart';
import 'package:yelan/core/failures.dart';

class BuildsServiceImpl implements BuildsService {
  final BuildsLocalRepository localRepository;
  final BuildsRemoteRepository remoteRepository;
  final InternetConnectionChecker connectionChecker;

  BuildsServiceImpl({
    required this.localRepository,
    required this.remoteRepository,
    required this.connectionChecker,
  });

  @override
  TaskEither<Failure, List<Character>> getByElement(GenshinElement element) {
    return _hasConnectivity().toTaskEither<Failure>().flatMap(
          (hasConnectivity) => hasConnectivity
              ? remoteRepository.getByElement(element)
              : localRepository.getByElement(element),
        );
  }

  Task _hasConnectivity() => Task(() => connectionChecker.hasConnection);
}
