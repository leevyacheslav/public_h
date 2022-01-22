// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_category_background.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DiscoverCategoryBackground> _$discoverCategoryBackgroundSerializer =
    new _$DiscoverCategoryBackgroundSerializer();

class _$DiscoverCategoryBackgroundSerializer
    implements StructuredSerializer<DiscoverCategoryBackground> {
  @override
  final Iterable<Type> types = const [
    DiscoverCategoryBackground,
    _$DiscoverCategoryBackground
  ];
  @override
  final String wireName = 'DiscoverCategoryBackground';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DiscoverCategoryBackground object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'top',
      serializers.serialize(object.top, specifiedType: const FullType(String)),
      'bottom',
      serializers.serialize(object.bottom,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  DiscoverCategoryBackground deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DiscoverCategoryBackgroundBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'top':
          result.top = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bottom':
          result.bottom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DiscoverCategoryBackground extends DiscoverCategoryBackground {
  @override
  final String top;
  @override
  final String bottom;

  factory _$DiscoverCategoryBackground(
          [void Function(DiscoverCategoryBackgroundBuilder)? updates]) =>
      (new DiscoverCategoryBackgroundBuilder()..update(updates)).build();

  _$DiscoverCategoryBackground._({required this.top, required this.bottom})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        top, 'DiscoverCategoryBackground', 'top');
    BuiltValueNullFieldError.checkNotNull(
        bottom, 'DiscoverCategoryBackground', 'bottom');
  }

  @override
  DiscoverCategoryBackground rebuild(
          void Function(DiscoverCategoryBackgroundBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DiscoverCategoryBackgroundBuilder toBuilder() =>
      new DiscoverCategoryBackgroundBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DiscoverCategoryBackground &&
        top == other.top &&
        bottom == other.bottom;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, top.hashCode), bottom.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DiscoverCategoryBackground')
          ..add('top', top)
          ..add('bottom', bottom))
        .toString();
  }
}

class DiscoverCategoryBackgroundBuilder
    implements
        Builder<DiscoverCategoryBackground, DiscoverCategoryBackgroundBuilder> {
  _$DiscoverCategoryBackground? _$v;

  String? _top;
  String? get top => _$this._top;
  set top(String? top) => _$this._top = top;

  String? _bottom;
  String? get bottom => _$this._bottom;
  set bottom(String? bottom) => _$this._bottom = bottom;

  DiscoverCategoryBackgroundBuilder();

  DiscoverCategoryBackgroundBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _top = $v.top;
      _bottom = $v.bottom;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DiscoverCategoryBackground other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DiscoverCategoryBackground;
  }

  @override
  void update(void Function(DiscoverCategoryBackgroundBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DiscoverCategoryBackground build() {
    final _$result = _$v ??
        new _$DiscoverCategoryBackground._(
            top: BuiltValueNullFieldError.checkNotNull(
                top, 'DiscoverCategoryBackground', 'top'),
            bottom: BuiltValueNullFieldError.checkNotNull(
                bottom, 'DiscoverCategoryBackground', 'bottom'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
