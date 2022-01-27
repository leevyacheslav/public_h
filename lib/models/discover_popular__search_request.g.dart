// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_popular__search_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DiscoverPopularSearchRequest>
    _$discoverPopularSearchRequestSerializer =
    new _$DiscoverPopularSearchRequestSerializer();

class _$DiscoverPopularSearchRequestSerializer
    implements StructuredSerializer<DiscoverPopularSearchRequest> {
  @override
  final Iterable<Type> types = const [
    DiscoverPopularSearchRequest,
    _$DiscoverPopularSearchRequest
  ];
  @override
  final String wireName = 'DiscoverPopularSearchRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DiscoverPopularSearchRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'request',
      serializers.serialize(object.request,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  DiscoverPopularSearchRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DiscoverPopularSearchRequestBuilder();

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
        case 'request':
          result.request = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DiscoverPopularSearchRequest extends DiscoverPopularSearchRequest {
  @override
  final int id;
  @override
  final String request;

  factory _$DiscoverPopularSearchRequest(
          [void Function(DiscoverPopularSearchRequestBuilder)? updates]) =>
      (new DiscoverPopularSearchRequestBuilder()..update(updates)).build();

  _$DiscoverPopularSearchRequest._({required this.id, required this.request})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, 'DiscoverPopularSearchRequest', 'id');
    BuiltValueNullFieldError.checkNotNull(
        request, 'DiscoverPopularSearchRequest', 'request');
  }

  @override
  DiscoverPopularSearchRequest rebuild(
          void Function(DiscoverPopularSearchRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DiscoverPopularSearchRequestBuilder toBuilder() =>
      new DiscoverPopularSearchRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DiscoverPopularSearchRequest &&
        id == other.id &&
        request == other.request;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), request.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DiscoverPopularSearchRequest')
          ..add('id', id)
          ..add('request', request))
        .toString();
  }
}

class DiscoverPopularSearchRequestBuilder
    implements
        Builder<DiscoverPopularSearchRequest,
            DiscoverPopularSearchRequestBuilder> {
  _$DiscoverPopularSearchRequest? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _request;
  String? get request => _$this._request;
  set request(String? request) => _$this._request = request;

  DiscoverPopularSearchRequestBuilder();

  DiscoverPopularSearchRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _request = $v.request;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DiscoverPopularSearchRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DiscoverPopularSearchRequest;
  }

  @override
  void update(void Function(DiscoverPopularSearchRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DiscoverPopularSearchRequest build() {
    final _$result = _$v ??
        new _$DiscoverPopularSearchRequest._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'DiscoverPopularSearchRequest', 'id'),
            request: BuiltValueNullFieldError.checkNotNull(
                request, 'DiscoverPopularSearchRequest', 'request'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
