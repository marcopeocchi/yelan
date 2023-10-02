import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yelan/builds/model/character.dart';
import 'package:yelan/builds/repository/builds_local_repository.dart';
import 'package:yelan/core/elements.dart';
import 'package:yelan/core/failures.dart';

const _cachingKey = 'builds';

class BuildsLocalRepositoryImpl implements BuildsLocalRepository {
  final SharedPreferences preferences;

  const BuildsLocalRepositoryImpl(this.preferences);

  @override
  TaskEither<Failure, List<Character>> getByElement(GenshinElement element) =>
      TaskEither<Failure, List<Character>>.tryCatch(
        () async {
          var characters = preferences.getStringList('$_cachingKey-$element');
          characters ??= List.empty();

          return characters
              .map((json) => Character.fromJson(jsonDecode(json)))
              .toList();
        },
        (error, stackTrace) => LocalStorageFailure(
          error: error,
          stacktrace: stackTrace,
        ),
      );
}
