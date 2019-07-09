import 'package:built_collection/built_collection.dart';
import 'package:comic_app_bloc_pattern_rxdart/data/remote/comic_api_service.dart';
import 'package:comic_app_bloc_pattern_rxdart/data/remote/mapper.dart';
import 'package:comic_app_bloc_pattern_rxdart/domain/models/comic_app_error.dart';
import 'package:comic_app_bloc_pattern_rxdart/domain/models/updated_comic.dart';
import 'package:comic_app_bloc_pattern_rxdart/domain/repository/comic_repository.dart';
import 'package:comic_app_bloc_pattern_rxdart/utils/either.dart';

class ComicRepositoryImpl implements ComicRepository {
  final ComicApiService _apiService;
  final Mapper _mapper;

  const ComicRepositoryImpl(this._apiService, this._mapper);

  @override
  Future<Either<ComicAppError, BuiltList<UpdatedComic>>> getUpdatedComics(
      {int page}) async {
    final result = await _apiService.getUpdatedComics(page: page);
    return result.bimap(
      (error) => _mapper.remoteErrorToDomain(error),
      (comics) => BuiltList.of(comics.map(_mapper.responseToDomain)),
    );
  }
}
