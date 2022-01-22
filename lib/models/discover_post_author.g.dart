// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_post_author.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DiscoverPostAuthor> _$discoverPostAuthorSerializer =
    new _$DiscoverPostAuthorSerializer();

class _$DiscoverPostAuthorSerializer
    implements StructuredSerializer<DiscoverPostAuthor> {
  @override
  final Iterable<Type> types = const [DiscoverPostAuthor, _$DiscoverPostAuthor];
  @override
  final String wireName = 'DiscoverPostAuthor';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DiscoverPostAuthor object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'avatar',
      serializers.serialize(object.avatar,
          specifiedType: const FullType(String)),
      'specialization',
      serializers.serialize(object.specialization,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  DiscoverPostAuthor deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DiscoverPostAuthorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'avatar':
          result.avatar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'specialization':
          result.specialization = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DiscoverPostAuthor extends DiscoverPostAuthor {
  @override
  final String name;
  @override
  final String avatar;
  @override
  final String specialization;

  factory _$DiscoverPostAuthor(
          [void Function(DiscoverPostAuthorBuilder)? updates]) =>
      (new DiscoverPostAuthorBuilder()..update(updates)).build();

  _$DiscoverPostAuthor._(
      {required this.name, required this.avatar, required this.specialization})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'DiscoverPostAuthor', 'name');
    BuiltValueNullFieldError.checkNotNull(
        avatar, 'DiscoverPostAuthor', 'avatar');
    BuiltValueNullFieldError.checkNotNull(
        specialization, 'DiscoverPostAuthor', 'specialization');
  }

  @override
  DiscoverPostAuthor rebuild(
          void Function(DiscoverPostAuthorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DiscoverPostAuthorBuilder toBuilder() =>
      new DiscoverPostAuthorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DiscoverPostAuthor &&
        name == other.name &&
        avatar == other.avatar &&
        specialization == other.specialization;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, name.hashCode), avatar.hashCode), specialization.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DiscoverPostAuthor')
          ..add('name', name)
          ..add('avatar', avatar)
          ..add('specialization', specialization))
        .toString();
  }
}

class DiscoverPostAuthorBuilder
    implements Builder<DiscoverPostAuthor, DiscoverPostAuthorBuilder> {
  _$DiscoverPostAuthor? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _avatar;
  String? get avatar => _$this._avatar;
  set avatar(String? avatar) => _$this._avatar = avatar;

  String? _specialization;
  String? get specialization => _$this._specialization;
  set specialization(String? specialization) =>
      _$this._specialization = specialization;

  DiscoverPostAuthorBuilder();

  DiscoverPostAuthorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _avatar = $v.avatar;
      _specialization = $v.specialization;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DiscoverPostAuthor other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DiscoverPostAuthor;
  }

  @override
  void update(void Function(DiscoverPostAuthorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DiscoverPostAuthor build() {
    final _$result = _$v ??
        new _$DiscoverPostAuthor._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'DiscoverPostAuthor', 'name'),
            avatar: BuiltValueNullFieldError.checkNotNull(
                avatar, 'DiscoverPostAuthor', 'avatar'),
            specialization: BuiltValueNullFieldError.checkNotNull(
                specialization, 'DiscoverPostAuthor', 'specialization'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
