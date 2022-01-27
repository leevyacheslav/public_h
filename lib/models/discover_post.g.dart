// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_post.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DiscoverPost> _$discoverPostSerializer =
    new _$DiscoverPostSerializer();

class _$DiscoverPostSerializer implements StructuredSerializer<DiscoverPost> {
  @override
  final Iterable<Type> types = const [DiscoverPost, _$DiscoverPost];
  @override
  final String wireName = 'DiscoverPost';

  @override
  Iterable<Object?> serialize(Serializers serializers, DiscoverPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'media',
      serializers.serialize(object.media,
          specifiedType: const FullType(String)),
      'media_type',
      serializers.serialize(object.mediaType,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.shortDescription;
    if (value != null) {
      result
        ..add('short_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.categoryName;
    if (value != null) {
      result
        ..add('category_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.duration;
    if (value != null) {
      result
        ..add('duration')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.thumbnail;
    if (value != null) {
      result
        ..add('thumbnail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.averageReadingTime;
    if (value != null) {
      result
        ..add('average_reading_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.author;
    if (value != null) {
      result
        ..add('author')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DiscoverPostAuthor)));
    }
    value = object.saved;
    if (value != null) {
      result
        ..add('saved')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  DiscoverPost deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DiscoverPostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'short_description':
          result.shortDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'category_name':
          result.categoryName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'thumbnail':
          result.thumbnail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'media':
          result.media = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'media_type':
          result.mediaType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'average_reading_time':
          result.averageReadingTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
                  specifiedType: const FullType(DiscoverPostAuthor))!
              as DiscoverPostAuthor);
          break;
        case 'saved':
          result.saved = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$DiscoverPost extends DiscoverPost {
  @override
  final int id;
  @override
  final String title;
  @override
  final String? description;
  @override
  final String? shortDescription;
  @override
  final String? categoryName;
  @override
  final String? duration;
  @override
  final String? thumbnail;
  @override
  final String media;
  @override
  final String mediaType;
  @override
  final String? averageReadingTime;
  @override
  final DiscoverPostAuthor? author;
  @override
  final bool? saved;

  factory _$DiscoverPost([void Function(DiscoverPostBuilder)? updates]) =>
      (new DiscoverPostBuilder()..update(updates)).build();

  _$DiscoverPost._(
      {required this.id,
      required this.title,
      this.description,
      this.shortDescription,
      this.categoryName,
      this.duration,
      this.thumbnail,
      required this.media,
      required this.mediaType,
      this.averageReadingTime,
      this.author,
      this.saved})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'DiscoverPost', 'id');
    BuiltValueNullFieldError.checkNotNull(title, 'DiscoverPost', 'title');
    BuiltValueNullFieldError.checkNotNull(media, 'DiscoverPost', 'media');
    BuiltValueNullFieldError.checkNotNull(
        mediaType, 'DiscoverPost', 'mediaType');
  }

  @override
  DiscoverPost rebuild(void Function(DiscoverPostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DiscoverPostBuilder toBuilder() => new DiscoverPostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DiscoverPost &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        shortDescription == other.shortDescription &&
        categoryName == other.categoryName &&
        duration == other.duration &&
        thumbnail == other.thumbnail &&
        media == other.media &&
        mediaType == other.mediaType &&
        averageReadingTime == other.averageReadingTime &&
        author == other.author &&
        saved == other.saved;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, id.hashCode),
                                                title.hashCode),
                                            description.hashCode),
                                        shortDescription.hashCode),
                                    categoryName.hashCode),
                                duration.hashCode),
                            thumbnail.hashCode),
                        media.hashCode),
                    mediaType.hashCode),
                averageReadingTime.hashCode),
            author.hashCode),
        saved.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DiscoverPost')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('shortDescription', shortDescription)
          ..add('categoryName', categoryName)
          ..add('duration', duration)
          ..add('thumbnail', thumbnail)
          ..add('media', media)
          ..add('mediaType', mediaType)
          ..add('averageReadingTime', averageReadingTime)
          ..add('author', author)
          ..add('saved', saved))
        .toString();
  }
}

class DiscoverPostBuilder
    implements Builder<DiscoverPost, DiscoverPostBuilder> {
  _$DiscoverPost? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _shortDescription;
  String? get shortDescription => _$this._shortDescription;
  set shortDescription(String? shortDescription) =>
      _$this._shortDescription = shortDescription;

  String? _categoryName;
  String? get categoryName => _$this._categoryName;
  set categoryName(String? categoryName) => _$this._categoryName = categoryName;

  String? _duration;
  String? get duration => _$this._duration;
  set duration(String? duration) => _$this._duration = duration;

  String? _thumbnail;
  String? get thumbnail => _$this._thumbnail;
  set thumbnail(String? thumbnail) => _$this._thumbnail = thumbnail;

  String? _media;
  String? get media => _$this._media;
  set media(String? media) => _$this._media = media;

  String? _mediaType;
  String? get mediaType => _$this._mediaType;
  set mediaType(String? mediaType) => _$this._mediaType = mediaType;

  String? _averageReadingTime;
  String? get averageReadingTime => _$this._averageReadingTime;
  set averageReadingTime(String? averageReadingTime) =>
      _$this._averageReadingTime = averageReadingTime;

  DiscoverPostAuthorBuilder? _author;
  DiscoverPostAuthorBuilder get author =>
      _$this._author ??= new DiscoverPostAuthorBuilder();
  set author(DiscoverPostAuthorBuilder? author) => _$this._author = author;

  bool? _saved;
  bool? get saved => _$this._saved;
  set saved(bool? saved) => _$this._saved = saved;

  DiscoverPostBuilder();

  DiscoverPostBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _description = $v.description;
      _shortDescription = $v.shortDescription;
      _categoryName = $v.categoryName;
      _duration = $v.duration;
      _thumbnail = $v.thumbnail;
      _media = $v.media;
      _mediaType = $v.mediaType;
      _averageReadingTime = $v.averageReadingTime;
      _author = $v.author?.toBuilder();
      _saved = $v.saved;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DiscoverPost other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DiscoverPost;
  }

  @override
  void update(void Function(DiscoverPostBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DiscoverPost build() {
    _$DiscoverPost _$result;
    try {
      _$result = _$v ??
          new _$DiscoverPost._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'DiscoverPost', 'id'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, 'DiscoverPost', 'title'),
              description: description,
              shortDescription: shortDescription,
              categoryName: categoryName,
              duration: duration,
              thumbnail: thumbnail,
              media: BuiltValueNullFieldError.checkNotNull(
                  media, 'DiscoverPost', 'media'),
              mediaType: BuiltValueNullFieldError.checkNotNull(
                  mediaType, 'DiscoverPost', 'mediaType'),
              averageReadingTime: averageReadingTime,
              author: _author?.build(),
              saved: saved);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'author';
        _author?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DiscoverPost', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
