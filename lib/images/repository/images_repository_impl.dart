import 'dart:convert';
import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yelan/core/failures.dart';
import 'package:yelan/images/models/character_image.dart';
import 'package:yelan/images/repository/images_repository.dart';

const _baseUrl = 'https://communitybuilds.vercel.app/api/images/name';

class ImagesRepositoryImpl implements ImagesRepository {
  final HttpClient client;
  final SharedPreferences preferences;

  const ImagesRepositoryImpl({
    required this.client,
    required this.preferences,
  });

  @override
  TaskEither<Failure, CharacterImage> getImagesByName(String name) {
    return TaskEither<Failure, CharacterImage>.tryCatch(
      () async {
        if (preferences.getString(name) != null) {
          return CharacterImage.fromJson(
            jsonDecode(preferences.getString(name)!),
          );
        }

        final req = await client.getUrl(Uri.parse('$_baseUrl/$name'));
        final res = await req.close();

        final data = await res.transform(utf8.decoder).join();
        final json = jsonDecode(data);

        final ci = CharacterImage.fromJson(json);
        await preferences.setString(name, data);

        return ci;
      },
      (error, stackTrace) => FetchFailure(
        error: error,
        stacktrace: stackTrace,
      ),
    );
  }

  @override
  TaskEither<Failure, String> cacheImage(CharacterImage ci) =>
      TaskEither.tryCatch(
        () async {
          if (preferences.getString('${ci.query}-local') != null) {
            return preferences.getString('${ci.query}-local')!;
          }

          final uri = Uri.parse(ci.result.first);

          final req = await client.getUrl(uri);
          final res = await req.close();

          final cacheDir =
              await (await getApplicationCacheDirectory()).create();

          final filename = ci.query.replaceAll(' ', '');

          final file = await File('${cacheDir.path}/$filename').create(
            recursive: true,
          );

          await res.pipe(file.openWrite());
          await preferences.setString('${ci.query}-local', file.absolute.path);

          return file.absolute.path;
        },
        (error, stackTrace) => LocalStorageFailure(
          error: error,
          stacktrace: stackTrace,
        ),
      );
}
