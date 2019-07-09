import 'package:built_collection/built_collection.dart';
import 'package:comic_app_bloc_pattern_rxdart/data/remote/remote_error.dart';
import 'package:comic_app_bloc_pattern_rxdart/data/remote/response/updated_comic.dart';
import 'package:comic_app_bloc_pattern_rxdart/domain/models/comic_app_error.dart'
    as comic_app_error;
import 'package:comic_app_bloc_pattern_rxdart/domain/models/updated_comic.dart';

class Mapper {
  comic_app_error.ComicAppError remoteErrorToDomain(RemoteError error) {
    if (error is ServerResponseError) {
      return comic_app_error.ServerResponseError(
          error.message, error.statusCode);
    }
    if (error is UnexpectedError) {
      return comic_app_error.UnexpectedError(error.message, error.error);
    }
    return null;
  }

  UpdatedComic responseToDomain(UpdatedComicResponse response) {
    return UpdatedComic(
      (b) => b
        ..link = response.link
        ..thumbnail = response.thumbnail
        ..title = response.title
        ..view = response.view
        ..lastChapters = ListBuilder<UpdatedComicChapter>(
          response.lastChapters.map(
            (chapter) => UpdatedComicChapter(
                  (b) => b
                    ..chapterLink = chapter.chapterLink
                    ..chapterName = chapter.chapterName
                    ..time = chapter.time,
                ),
          ),
        ),
    );
  }
}
