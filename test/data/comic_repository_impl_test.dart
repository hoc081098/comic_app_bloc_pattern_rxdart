import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:comic_app_bloc_pattern_rxdart/data/comic_repository_impl.dart';
import 'package:comic_app_bloc_pattern_rxdart/data/remote/comic_api_service.dart';
import 'package:comic_app_bloc_pattern_rxdart/data/remote/mapper.dart';
import 'package:comic_app_bloc_pattern_rxdart/data/remote/remote_error.dart';
import 'package:comic_app_bloc_pattern_rxdart/data/remote/response/updated_comic.dart';
import 'package:comic_app_bloc_pattern_rxdart/domain/models/comic_app_error.dart' as comic_app_error;
import 'package:comic_app_bloc_pattern_rxdart/utils/either.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:test_api/test_api.dart' show TypeMatcher;

import 'remote/comic_api_service_test.dart';

class MockComicApiService extends Mock implements ComicApiService {}

void main() {
  group('Test $ComicRepositoryImpl', () {
    final api = MockComicApiService();
    final comicRepo = ComicRepositoryImpl(api, Mapper());

    group('Get updated comic', () {
      final page = 1;

      test('Get successfully', () async {
        when(api.getUpdatedComics(page: page)).thenAnswer((_) async {
          final decoded = json
              .decode(await readFile('updated_comics_successfully_response'));
          final comics = BuiltList.of((decoded as List)
              .map((json) => UpdatedComicResponse.fromJson(json)));
          return Either.right(comics);
        });

        final result = await comicRepo.getUpdatedComics(page: page);
        expect(result.isRight(), true);

        final comics = result.orNull();
        expect(comics, isNotNull);
        expect(comics.length, 13);
        expect(comics[0].link,
            'http://www.nettruyen.com/truyen-tranh/tay-choi-than-cap');
      });

      test('Return error result', () async {
        when(api.getUpdatedComics(page: page)).thenAnswer((_) async {
          final decoded =
              json.decode(await readFile('updated_comics_server_error'));
          return Either.left(
            ServerResponseError(
              decoded['message'],
              decoded['status_code'],
            ),
          );
        });

        final result = await comicRepo.getUpdatedComics(page: page);
        expect(result.isLeft(), true);
        expect(result.orNull(), isNull);

        final error = result.swap().orNull();
        expect(error, isNotNull);
        expect(error, const TypeMatcher<comic_app_error.ComicAppError>());
        expect(
          error,
          const TypeMatcher<comic_app_error.ServerResponseError>()
              .having((e) => e.statusCode, 'Status code', 500)
              .having(
                (e) => e.message,
                'Error message',
                "An error occurred: 'Server error'",
              ),
        );
      });
    });
  });
}
