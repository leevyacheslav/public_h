// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_category.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DiscoverCategory> _$discoverCategorySerializer =
    new _$DiscoverCategorySerializer();

class _$DiscoverCategorySerializer
    implements StructuredSerializer<DiscoverCategory> {
  @override
  final Iterable<Type> types = const [DiscoverCategory, _$DiscoverCategory];
  @override
  final String wireName = 'DiscoverCategory';

  @override
  Iterable<Object?> serialize(Serializers serializers, DiscoverCategory object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
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
    value = object.icon;
    if (value != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.posts;
    if (value != null) {
      result
        ..add('posts')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(DiscoverPost)])));
    }
    value = object.background;
    if (value != null) {
      result
        ..add('background')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DiscoverCategoryBackground)));
    }
    return result;
  }

  @override
  DiscoverCategory deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DiscoverCategoryBuilder();

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
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'posts':
          result.posts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(DiscoverPost)]))!
              as BuiltList<Object?>);
          break;
        case 'background':
          result.background.replace(serializers.deserialize(value,
                  specifiedType: const FullType(DiscoverCategoryBackground))!
              as DiscoverCategoryBackground);
          break;
      }
    }

    return result.build();
  }
}

class _$DiscoverCategory extends DiscoverCategory {
  @override
  final int id;
  @override
  final String title;
  @override
  final String? description;
  @override
  final String? icon;
  @override
  final BuiltList<DiscoverPost>? posts;
  @override
  final DiscoverCategoryBackground? background;

  factory _$DiscoverCategory(
          [void Function(DiscoverCategoryBuilder)? updates]) =>
      (new DiscoverCategoryBuilder()..update(updates)).build();

  _$DiscoverCategory._(
      {required this.id,
      required this.title,
      this.description,
      this.icon,
      this.posts,
      this.background})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'DiscoverCategory', 'id');
    BuiltValueNullFieldError.checkNotNull(title, 'DiscoverCategory', 'title');
  }

  @override
  DiscoverCategory rebuild(void Function(DiscoverCategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DiscoverCategoryBuilder toBuilder() =>
      new DiscoverCategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DiscoverCategory &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        icon == other.icon &&
        posts == other.posts &&
        background == other.background;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), title.hashCode),
                    description.hashCode),
                icon.hashCode),
            posts.hashCode),
        background.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DiscoverCategory')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('icon', icon)
          ..add('posts', posts)
          ..add('background', background))
        .toString();
  }
}

class DiscoverCategoryBuilder
    implements Builder<DiscoverCategory, DiscoverCategoryBuilder> {
  _$DiscoverCategory? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  ListBuilder<DiscoverPost>? _posts;
  ListBuilder<DiscoverPost> get posts =>
      _$this._posts ??= new ListBuilder<DiscoverPost>();
  set posts(ListBuilder<DiscoverPost>? posts) => _$this._posts = posts;

  DiscoverCategoryBackgroundBuilder? _background;
  DiscoverCategoryBackgroundBuilder get background =>
      _$this._background ??= new DiscoverCategoryBackgroundBuilder();
  set background(DiscoverCategoryBackgroundBuilder? background) =>
      _$this._background = background;

  DiscoverCategoryBuilder();

  DiscoverCategoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _description = $v.description;
      _icon = $v.icon;
      _posts = $v.posts?.toBuilder();
      _background = $v.background?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DiscoverCategory other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DiscoverCategory;
  }

  @override
  void update(void Function(DiscoverCategoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DiscoverCategory build() {
    _$DiscoverCategory _$result;
    try {
      _$result = _$v ??
          new _$DiscoverCategory._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'DiscoverCategory', 'id'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, 'DiscoverCategory', 'title'),
              description: description,
              icon: icon,
              posts: _posts?.build(),
              background: _background?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'posts';
        _posts?.build();
        _$failedField = 'background';
        _background?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DiscoverCategory', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
