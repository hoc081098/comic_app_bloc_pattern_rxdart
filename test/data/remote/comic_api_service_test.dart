import 'dart:io';

import 'package:comic_app_bloc_pattern_rxdart/data/remote/comic_api_service.dart';
import 'package:comic_app_bloc_pattern_rxdart/data/remote/remote_error.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:test_api/test_api.dart' show TypeMatcher;

class MockHttpClient extends Mock implements http.Client {}

Future<String> readFile(String responseFileName) =>
    File('test/data/remote/$responseFileName.json').readAsString();

void main() {
  group('Test $ComicApiService', () {
    final client = MockHttpClient();
    final api = ComicApiService(client);

    group('Get updated comic', () {
      final page = 1;
      final url = Uri.https(
        ComicApiService.baseComicUrl,
        '/updated_comics',
        {'page': page.toString()},
      );

      test('Get successfully', () async {
        when(
          client.get(
            argThat(
              startsWith(
                url.toString(),
              ),
            ),
          ),
        ).thenAnswer((_) async {
          return http.Response(
            await readFile('updated_comics_successfully_response'),
            200,
            headers: {
              HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8'
            },
          );
        });

        final result = await api.getUpdatedComics(page: page);
        expect(result.isRight(), true);

        final comics = result.orNull();
        expect(comics.length, 13);
        expect(comics[0].link,
            'http://www.nettruyen.com/truyen-tranh/tay-choi-than-cap');
      });

      test('Server response error', () async {
        when(
          client.get(
            argThat(
              startsWith(
                url.toString(),
              ),
            ),
          ),
        ).thenAnswer((_) async {
          return http.Response(
            await readFile('updated_comics_server_error'),
            500,
            headers: {
              HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8'
            },
          );
        });

        final result = await api.getUpdatedComics(page: page);
        expect(result.isLeft(), true);
        expect(result.orNull(), isNull);

        final error = result.fold((l) => l, (_) => null);
        expect(error, isNotNull);
        expect(error, const TypeMatcher<RemoteError>());
        expect(
          error,
          const TypeMatcher<ServerResponseError>()
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
