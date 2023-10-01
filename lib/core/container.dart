import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yelan/builds/repository/builds_local_repository.dart';
import 'package:yelan/builds/repository/builds_local_repository_impl.dart';
import 'package:yelan/builds/repository/builds_remote_repository.dart';
import 'package:yelan/builds/repository/builds_remote_repository_impl.dart';
import 'package:yelan/builds/service/builds_service.dart';
import 'package:yelan/builds/service/builds_service_impl.dart';
import 'package:yelan/builds/store/characters_store.dart';
import 'package:yelan/images/repository/images_repository.dart';
import 'package:yelan/images/repository/images_repository_impl.dart';
import 'package:yelan/images/service/images_service.dart';
import 'package:yelan/images/service/images_service_impl.dart';
import 'package:yelan/images/store/images_store.dart';

sealed class InjectionContainer {
  static final sl = GetIt.instance;

  static Future<void> init() async {
    // Common -----------------------------------------------------------------

    sl.registerLazySingletonAsync(() => SharedPreferences.getInstance());
    await sl.isReady<SharedPreferences>();

    sl.registerLazySingleton(() => InternetConnectionChecker());

    sl.registerFactory(() => HttpClient());

    // End Common -------------------------------------------------------------

    // Builds -----------------------------------------------------------------
    sl.registerLazySingleton<BuildsLocalRepository>(
      () => BuildsLocalRepositoryImpl(sl()),
    );

    sl.registerLazySingleton<BuildsRemoteRepository>(
      () => BuildsRemoteRepositoryImpl(
        client: sl(),
        preferences: sl(),
      ),
    );

    sl.registerLazySingleton<BuildsService>(
      () => BuildsServiceImpl(
        localRepository: sl(),
        remoteRepository: sl(),
        connectionChecker: sl(),
      ),
    );

    sl.registerFactory(() => CharactersStore(sl()));
    // End Builds -------------------------------------------------------------

    // Start Images -----------------------------------------------------------
    sl.registerLazySingleton<ImagesRepository>(
      () => ImagesRepositoryImpl(client: sl(), preferences: sl()),
    );

    sl.registerLazySingleton<ImagesService>(
      () => ImagesServiceImpl(sl()),
    );

    sl.registerFactory(() => ImagesStore(sl()));
    // End Images -------------------------------------------------------------
  }
}
