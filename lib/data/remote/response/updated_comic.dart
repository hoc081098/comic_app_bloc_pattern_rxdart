import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:comic_app_bloc_pattern_rxdart/data/remote/response/serializers.dart';

part 'updated_comic.g.dart';

abstract class UpdatedComicResponse
    implements Built<UpdatedComicResponse, UpdatedComicResponseBuilder> {
  @BuiltValueField(wireName: 'last_chapters')
  BuiltList<UpdatedComicChapterResponse> get lastChapters;

  @BuiltValueField(wireName: 'link')
  String get link;

  @BuiltValueField(wireName: 'thumbnail')
  String get thumbnail;

  @BuiltValueField(wireName: 'title')
  String get title;

  @nullable
  @BuiltValueField(wireName: 'view')
  String get view;

  static Serializer<UpdatedComicResponse> get serializer => _$updatedComicResponseSerializer;

  UpdatedComicResponse._();

  factory UpdatedComicResponse([updates(UpdatedComicResponseBuilder b)]) = _$UpdatedComicResponse;

  factory UpdatedComicResponse.fromJson(Map<String, dynamic> json) {
    return standardSerializers.deserializeWith<UpdatedComicResponse>(
        UpdatedComicResponse.serializer, json);
  }
}

abstract class UpdatedComicChapterResponse
    implements Built<UpdatedComicChapterResponse, UpdatedComicChapterResponseBuilder> {
  @BuiltValueField(wireName: 'chapter_link')
  String get chapterLink;

  @BuiltValueField(wireName: 'chapter_name')
  String get chapterName;

  @BuiltValueField(wireName: 'time')
  String get time;

  static Serializer<UpdatedComicChapterResponse> get serializer =>
      _$updatedComicChapterResponseSerializer;

  UpdatedComicChapterResponse._();

  factory UpdatedComicChapterResponse([updates(UpdatedComicChapterResponseBuilder b)]) =
      _$UpdatedComicChapterResponse;

  factory UpdatedComicChapterResponse.fromJson(Map<String, dynamic> json) {
    return standardSerializers.deserializeWith<UpdatedComicChapterResponse>(
        UpdatedComicChapterResponse.serializer, json);
  }
}
