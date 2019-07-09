// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updated_comic.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UpdatedComicResponse> _$updatedComicResponseSerializer =
    new _$UpdatedComicResponseSerializer();
Serializer<UpdatedComicChapterResponse>
    _$updatedComicChapterResponseSerializer =
    new _$UpdatedComicChapterResponseSerializer();

class _$UpdatedComicResponseSerializer
    implements StructuredSerializer<UpdatedComicResponse> {
  @override
  final Iterable<Type> types = const [
    UpdatedComicResponse,
    _$UpdatedComicResponse
  ];
  @override
  final String wireName = 'UpdatedComicResponse';

  @override
  Iterable serialize(Serializers serializers, UpdatedComicResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'last_chapters',
      serializers.serialize(object.lastChapters,
          specifiedType: const FullType(
              BuiltList, const [const FullType(UpdatedComicChapterResponse)])),
      'link',
      serializers.serialize(object.link, specifiedType: const FullType(String)),
      'thumbnail',
      serializers.serialize(object.thumbnail,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];
    if (object.view != null) {
      result
        ..add('view')
        ..add(serializers.serialize(object.view,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UpdatedComicResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UpdatedComicResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'last_chapters':
          result.lastChapters.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(UpdatedComicChapterResponse)
              ])) as BuiltList);
          break;
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'thumbnail':
          result.thumbnail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'view':
          result.view = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UpdatedComicChapterResponseSerializer
    implements StructuredSerializer<UpdatedComicChapterResponse> {
  @override
  final Iterable<Type> types = const [
    UpdatedComicChapterResponse,
    _$UpdatedComicChapterResponse
  ];
  @override
  final String wireName = 'UpdatedComicChapterResponse';

  @override
  Iterable serialize(
      Serializers serializers, UpdatedComicChapterResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'chapter_link',
      serializers.serialize(object.chapterLink,
          specifiedType: const FullType(String)),
      'chapter_name',
      serializers.serialize(object.chapterName,
          specifiedType: const FullType(String)),
      'time',
      serializers.serialize(object.time, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  UpdatedComicChapterResponse deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UpdatedComicChapterResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'chapter_link':
          result.chapterLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'chapter_name':
          result.chapterName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UpdatedComicResponse extends UpdatedComicResponse {
  @override
  final BuiltList<UpdatedComicChapterResponse> lastChapters;
  @override
  final String link;
  @override
  final String thumbnail;
  @override
  final String title;
  @override
  final String view;

  factory _$UpdatedComicResponse(
          [void Function(UpdatedComicResponseBuilder) updates]) =>
      (new UpdatedComicResponseBuilder()..update(updates)).build();

  _$UpdatedComicResponse._(
      {this.lastChapters, this.link, this.thumbnail, this.title, this.view})
      : super._() {
    if (lastChapters == null) {
      throw new BuiltValueNullFieldError(
          'UpdatedComicResponse', 'lastChapters');
    }
    if (link == null) {
      throw new BuiltValueNullFieldError('UpdatedComicResponse', 'link');
    }
    if (thumbnail == null) {
      throw new BuiltValueNullFieldError('UpdatedComicResponse', 'thumbnail');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('UpdatedComicResponse', 'title');
    }
  }

  @override
  UpdatedComicResponse rebuild(
          void Function(UpdatedComicResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdatedComicResponseBuilder toBuilder() =>
      new UpdatedComicResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdatedComicResponse &&
        lastChapters == other.lastChapters &&
        link == other.link &&
        thumbnail == other.thumbnail &&
        title == other.title &&
        view == other.view;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, lastChapters.hashCode), link.hashCode),
                thumbnail.hashCode),
            title.hashCode),
        view.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UpdatedComicResponse')
          ..add('lastChapters', lastChapters)
          ..add('link', link)
          ..add('thumbnail', thumbnail)
          ..add('title', title)
          ..add('view', view))
        .toString();
  }
}

class UpdatedComicResponseBuilder
    implements Builder<UpdatedComicResponse, UpdatedComicResponseBuilder> {
  _$UpdatedComicResponse _$v;

  ListBuilder<UpdatedComicChapterResponse> _lastChapters;
  ListBuilder<UpdatedComicChapterResponse> get lastChapters =>
      _$this._lastChapters ??= new ListBuilder<UpdatedComicChapterResponse>();
  set lastChapters(ListBuilder<UpdatedComicChapterResponse> lastChapters) =>
      _$this._lastChapters = lastChapters;

  String _link;
  String get link => _$this._link;
  set link(String link) => _$this._link = link;

  String _thumbnail;
  String get thumbnail => _$this._thumbnail;
  set thumbnail(String thumbnail) => _$this._thumbnail = thumbnail;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _view;
  String get view => _$this._view;
  set view(String view) => _$this._view = view;

  UpdatedComicResponseBuilder();

  UpdatedComicResponseBuilder get _$this {
    if (_$v != null) {
      _lastChapters = _$v.lastChapters?.toBuilder();
      _link = _$v.link;
      _thumbnail = _$v.thumbnail;
      _title = _$v.title;
      _view = _$v.view;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdatedComicResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UpdatedComicResponse;
  }

  @override
  void update(void Function(UpdatedComicResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpdatedComicResponse build() {
    _$UpdatedComicResponse _$result;
    try {
      _$result = _$v ??
          new _$UpdatedComicResponse._(
              lastChapters: lastChapters.build(),
              link: link,
              thumbnail: thumbnail,
              title: title,
              view: view);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'lastChapters';
        lastChapters.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UpdatedComicResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdatedComicChapterResponse extends UpdatedComicChapterResponse {
  @override
  final String chapterLink;
  @override
  final String chapterName;
  @override
  final String time;

  factory _$UpdatedComicChapterResponse(
          [void Function(UpdatedComicChapterResponseBuilder) updates]) =>
      (new UpdatedComicChapterResponseBuilder()..update(updates)).build();

  _$UpdatedComicChapterResponse._(
      {this.chapterLink, this.chapterName, this.time})
      : super._() {
    if (chapterLink == null) {
      throw new BuiltValueNullFieldError(
          'UpdatedComicChapterResponse', 'chapterLink');
    }
    if (chapterName == null) {
      throw new BuiltValueNullFieldError(
          'UpdatedComicChapterResponse', 'chapterName');
    }
    if (time == null) {
      throw new BuiltValueNullFieldError('UpdatedComicChapterResponse', 'time');
    }
  }

  @override
  UpdatedComicChapterResponse rebuild(
          void Function(UpdatedComicChapterResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdatedComicChapterResponseBuilder toBuilder() =>
      new UpdatedComicChapterResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdatedComicChapterResponse &&
        chapterLink == other.chapterLink &&
        chapterName == other.chapterName &&
        time == other.time;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, chapterLink.hashCode), chapterName.hashCode),
        time.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UpdatedComicChapterResponse')
          ..add('chapterLink', chapterLink)
          ..add('chapterName', chapterName)
          ..add('time', time))
        .toString();
  }
}

class UpdatedComicChapterResponseBuilder
    implements
        Builder<UpdatedComicChapterResponse,
            UpdatedComicChapterResponseBuilder> {
  _$UpdatedComicChapterResponse _$v;

  String _chapterLink;
  String get chapterLink => _$this._chapterLink;
  set chapterLink(String chapterLink) => _$this._chapterLink = chapterLink;

  String _chapterName;
  String get chapterName => _$this._chapterName;
  set chapterName(String chapterName) => _$this._chapterName = chapterName;

  String _time;
  String get time => _$this._time;
  set time(String time) => _$this._time = time;

  UpdatedComicChapterResponseBuilder();

  UpdatedComicChapterResponseBuilder get _$this {
    if (_$v != null) {
      _chapterLink = _$v.chapterLink;
      _chapterName = _$v.chapterName;
      _time = _$v.time;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdatedComicChapterResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UpdatedComicChapterResponse;
  }

  @override
  void update(void Function(UpdatedComicChapterResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpdatedComicChapterResponse build() {
    final _$result = _$v ??
        new _$UpdatedComicChapterResponse._(
            chapterLink: chapterLink, chapterName: chapterName, time: time);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
