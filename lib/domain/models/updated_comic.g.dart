// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updated_comic.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdatedComic extends UpdatedComic {
  @override
  final BuiltList<UpdatedComicChapter> lastChapters;
  @override
  final String link;
  @override
  final String thumbnail;
  @override
  final String title;
  @override
  final String view;

  factory _$UpdatedComic([void Function(UpdatedComicBuilder) updates]) =>
      (new UpdatedComicBuilder()..update(updates)).build();

  _$UpdatedComic._(
      {this.lastChapters, this.link, this.thumbnail, this.title, this.view})
      : super._() {
    if (lastChapters == null) {
      throw new BuiltValueNullFieldError('UpdatedComic', 'lastChapters');
    }
    if (link == null) {
      throw new BuiltValueNullFieldError('UpdatedComic', 'link');
    }
    if (thumbnail == null) {
      throw new BuiltValueNullFieldError('UpdatedComic', 'thumbnail');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('UpdatedComic', 'title');
    }
  }

  @override
  UpdatedComic rebuild(void Function(UpdatedComicBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdatedComicBuilder toBuilder() => new UpdatedComicBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdatedComic &&
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
    return (newBuiltValueToStringHelper('UpdatedComic')
          ..add('lastChapters', lastChapters)
          ..add('link', link)
          ..add('thumbnail', thumbnail)
          ..add('title', title)
          ..add('view', view))
        .toString();
  }
}

class UpdatedComicBuilder
    implements Builder<UpdatedComic, UpdatedComicBuilder> {
  _$UpdatedComic _$v;

  ListBuilder<UpdatedComicChapter> _lastChapters;
  ListBuilder<UpdatedComicChapter> get lastChapters =>
      _$this._lastChapters ??= new ListBuilder<UpdatedComicChapter>();
  set lastChapters(ListBuilder<UpdatedComicChapter> lastChapters) =>
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

  UpdatedComicBuilder();

  UpdatedComicBuilder get _$this {
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
  void replace(UpdatedComic other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UpdatedComic;
  }

  @override
  void update(void Function(UpdatedComicBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpdatedComic build() {
    _$UpdatedComic _$result;
    try {
      _$result = _$v ??
          new _$UpdatedComic._(
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
            'UpdatedComic', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdatedComicChapter extends UpdatedComicChapter {
  @override
  final String chapterLink;
  @override
  final String chapterName;
  @override
  final String time;

  factory _$UpdatedComicChapter(
          [void Function(UpdatedComicChapterBuilder) updates]) =>
      (new UpdatedComicChapterBuilder()..update(updates)).build();

  _$UpdatedComicChapter._({this.chapterLink, this.chapterName, this.time})
      : super._() {
    if (chapterLink == null) {
      throw new BuiltValueNullFieldError('UpdatedComicChapter', 'chapterLink');
    }
    if (chapterName == null) {
      throw new BuiltValueNullFieldError('UpdatedComicChapter', 'chapterName');
    }
    if (time == null) {
      throw new BuiltValueNullFieldError('UpdatedComicChapter', 'time');
    }
  }

  @override
  UpdatedComicChapter rebuild(
          void Function(UpdatedComicChapterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdatedComicChapterBuilder toBuilder() =>
      new UpdatedComicChapterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdatedComicChapter &&
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
    return (newBuiltValueToStringHelper('UpdatedComicChapter')
          ..add('chapterLink', chapterLink)
          ..add('chapterName', chapterName)
          ..add('time', time))
        .toString();
  }
}

class UpdatedComicChapterBuilder
    implements Builder<UpdatedComicChapter, UpdatedComicChapterBuilder> {
  _$UpdatedComicChapter _$v;

  String _chapterLink;
  String get chapterLink => _$this._chapterLink;
  set chapterLink(String chapterLink) => _$this._chapterLink = chapterLink;

  String _chapterName;
  String get chapterName => _$this._chapterName;
  set chapterName(String chapterName) => _$this._chapterName = chapterName;

  String _time;
  String get time => _$this._time;
  set time(String time) => _$this._time = time;

  UpdatedComicChapterBuilder();

  UpdatedComicChapterBuilder get _$this {
    if (_$v != null) {
      _chapterLink = _$v.chapterLink;
      _chapterName = _$v.chapterName;
      _time = _$v.time;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdatedComicChapter other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UpdatedComicChapter;
  }

  @override
  void update(void Function(UpdatedComicChapterBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpdatedComicChapter build() {
    final _$result = _$v ??
        new _$UpdatedComicChapter._(
            chapterLink: chapterLink, chapterName: chapterName, time: time);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
