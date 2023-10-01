import 'dart:convert';
import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yelan/builds/model/character.dart';
import 'package:yelan/builds/repository/builds_remote_repository.dart';
import 'package:yelan/core/elements.dart';
import 'package:yelan/core/failures.dart';

const _cachingKey = 'builds';

class BuildsRemoteRepositoryImpl implements BuildsRemoteRepository {
  final HttpClient client;
  final SharedPreferences preferences;

  const BuildsRemoteRepositoryImpl({
    required this.client,
    required this.preferences,
  });

  final baseUrl = 'https://communitybuilds.vercel.app/api/elements';

  @override
  TaskEither<Failure, List<Character>> getByElement(GenshinElement element) =>
      TaskEither<Failure, List<Character>>.tryCatch(
        () async {
          final req = await client.getUrl(
            Uri.parse('$baseUrl/${element.name}'),
          );
          final res = await req.close();

          final body = await res.transform(utf8.decoder).join();
          List<dynamic> characters = jsonDecode(body);

          return characters.map((json) => Character.fromJson(json)).toList();
        },
        (error, stackTrace) => FetchFailure(
          error: error,
          stacktrace: stackTrace,
        ),
      ).flatMap(_cacheItems);

  TaskEither<Failure, List<Character>> _cacheItems(
    List<Character> characters,
  ) =>
      TaskEither.tryCatch(
        () async {
          preferences.setStringList(
            _cachingKey,
            characters
                .map((character) => jsonEncode(character.toJson()))
                .toList(),
          );
          return characters;
        },
        (error, stackTrace) => LocalStorageFailure(
          error: error,
          stacktrace: stackTrace,
        ),
      );
}
