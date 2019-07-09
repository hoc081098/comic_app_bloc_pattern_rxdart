import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'updated_comic.g.dart';

abstract class UpdatedComic
    implements Built<UpdatedComic, UpdatedComicBuilder> {
  BuiltList<UpdatedComicChapter> get lastChapters;

  String get link;

  String get thumbnail;

  String get title;

  @nullable
  String get view;

  UpdatedComic._();

  factory UpdatedComic([updates(UpdatedComicBuilder b)]) = _$UpdatedComic;
}

abstract class UpdatedComicChapter
    implements Built<UpdatedComicChapter, UpdatedComicChapterBuilder> {
  String get chapterLink;

  String get chapterName;

  String get time;

  UpdatedComicChapter._();

  factory UpdatedComicChapter([updates(UpdatedComicChapterBuilder b)]) =
      _$UpdatedComicChapter;
}
