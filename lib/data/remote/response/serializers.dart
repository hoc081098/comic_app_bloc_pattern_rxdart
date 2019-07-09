import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:comic_app_bloc_pattern_rxdart/data/remote/response/updated_comic.dart';

part 'serializers.g.dart';

@SerializersFor([
  UpdatedComicResponse,
  UpdatedComicChapterResponse,
])
final Serializers serializers = _$serializers;
final Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
