import 'package:built_collection/built_collection.dart';
import 'package:comic_app_bloc_pattern_rxdart/domain/models/comic_app_error.dart';
import 'package:comic_app_bloc_pattern_rxdart/domain/models/updated_comic.dart';
import 'package:comic_app_bloc_pattern_rxdart/utils/either.dart';

abstract class ComicRepository {
  ///
  /// Get recent updated comics
  ///
  Future<Either<ComicAppError, BuiltList<UpdatedComic>>> getUpdatedComics(
      {int page});
}
