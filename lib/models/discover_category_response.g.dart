// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_category_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DiscoverCategoryResponse> _$discoverCategoryResponseSerializer =
    new _$DiscoverCategoryResponseSerializer();

class _$DiscoverCategoryResponseSerializer
    implements StructuredSerializer<DiscoverCategoryResponse> {
  @override
  final Iterable<Type> types = const [
    DiscoverCategoryResponse,
    _$DiscoverCategoryResponse
  ];
  @override
  final String wireName = 'DiscoverCategoryResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DiscoverCategoryResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'all',
      serializers.serialize(object.all,
          specifiedType: const FullType(
              BuiltList, const [const FullType(DiscoverCategory)])),
      'trending',
      serializers.serialize(object.trending,
          specifiedType: const FullType(
              BuiltList, const [const FullType(DiscoverCategory)])),
    ];

    return result;
  }

  @override
  DiscoverCategoryResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DiscoverCategoryResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'all':
          result.all.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(DiscoverCategory)]))!
              as BuiltList<Object?>);
          break;
        case 'trending':
          result.trending.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(DiscoverCategory)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$DiscoverCategoryResponse extends DiscoverCategoryResponse {
  @override
  final BuiltList<DiscoverCategory> all;
  @override
  final BuiltList<DiscoverCategory> trending;

  factory _$DiscoverCategoryResponse(
          [void Function(DiscoverCategoryResponseBuilder)? updates]) =>
      (new DiscoverCategoryResponseBuilder()..update(updates)).build();

  _$DiscoverCategoryResponse._({required this.all, required this.trending})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        all, 'DiscoverCategoryResponse', 'all');
    BuiltValueNullFieldError.checkNotNull(
        trending, 'DiscoverCategoryResponse', 'trending');
  }

  @override
  DiscoverCategoryResponse rebuild(
          void Function(DiscoverCategoryResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DiscoverCategoryResponseBuilder toBuilder() =>
      new DiscoverCategoryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DiscoverCategoryResponse &&
        all == other.all &&
        trending == other.trending;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, all.hashCode), trending.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DiscoverCategoryResponse')
          ..add('all', all)
          ..add('trending', trending))
        .toString();
  }
}

class DiscoverCategoryResponseBuilder
    implements
        Builder<DiscoverCategoryResponse, DiscoverCategoryResponseBuilder> {
  _$DiscoverCategoryResponse? _$v;

  ListBuilder<DiscoverCategory>? _all;
  ListBuilder<DiscoverCategory> get all =>
      _$this._all ??= new ListBuilder<DiscoverCategory>();
  set all(ListBuilder<DiscoverCategory>? all) => _$this._all = all;

  ListBuilder<DiscoverCategory>? _trending;
  ListBuilder<DiscoverCategory> get trending =>
      _$this._trending ??= new ListBuilder<DiscoverCategory>();
  set trending(ListBuilder<DiscoverCategory>? trending) =>
      _$this._trending = trending;

  DiscoverCategoryResponseBuilder();

  DiscoverCategoryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _all = $v.all.toBuilder();
      _trending = $v.trending.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DiscoverCategoryResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DiscoverCategoryResponse;
  }

  @override
  void update(void Function(DiscoverCategoryResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DiscoverCategoryResponse build() {
    _$DiscoverCategoryResponse _$result;
    try {
      _$result = _$v ??
          new _$DiscoverCategoryResponse._(
              all: all.build(), trending: trending.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'all';
        all.build();
        _$failedField = 'trending';
        trending.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DiscoverCategoryResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
