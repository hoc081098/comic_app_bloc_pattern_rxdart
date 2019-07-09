import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:comic_app_bloc_pattern_rxdart/data/remote/remote_error.dart';
import 'package:comic_app_bloc_pattern_rxdart/data/remote/response/updated_comic.dart';
import 'package:comic_app_bloc_pattern_rxdart/utils/either.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

class ComicApiService {
  @visibleForTesting
  static const baseComicUrl = 'comic-app-081098.herokuapp.com';
  final http.Client _client;

  const ComicApiService(this._client);

  Future<Either<RemoteError, dynamic>> _get(url) async {
    try {
      final response = await _client.get(url);

      final body = response.body;
      final decoded = json.decode(body);
      final statusCode = response.statusCode;

      if (statusCode < 200 || statusCode >= 300) {
        return Either.left(
          ServerResponseError(
            decoded['message'],
            decoded['status_code'],
          ),
        );
      }
      return Either.right(decoded);
    } catch (e, s) {
      return Either.left(
        UnexpectedError(
          'Unexpected error occurred: $e, $s',
          e,
        ),
      );
    }
  }

  Future<Either<RemoteError, BuiltList<UpdatedComicResponse>>> getUpdatedComics(
      {int page}) async {
    final url = Uri.https(
      baseComicUrl,
      '/updated_comics',
      {'page': page.toString()},
    );
    final result = await _get(url.toString());

    return result.map((decoded) {
      final comics =
          (decoded as Iterable).map((json) => UpdatedComicResponse.fromJson(json));
      return BuiltList.of(comics);
    });
  }
}
