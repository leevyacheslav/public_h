// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ApiMessage> _$apiMessageSerializer = new _$ApiMessageSerializer();

class _$ApiMessageSerializer implements StructuredSerializer<ApiMessage> {
  @override
  final Iterable<Type> types = const [ApiMessage, _$ApiMessage];
  @override
  final String wireName = 'ApiMessage';

  @override
  Iterable<Object?> serialize(Serializers serializers, ApiMessage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  ApiMessage deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApiMessageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$ApiMessage extends ApiMessage {
  @override
  final String message;
  @override
  final bool success;

  factory _$ApiMessage([void Function(ApiMessageBuilder)? updates]) =>
      (new ApiMessageBuilder()..update(updates)).build();

  _$ApiMessage._({required this.message, required this.success}) : super._() {
    BuiltValueNullFieldError.checkNotNull(message, 'ApiMessage', 'message');
    BuiltValueNullFieldError.checkNotNull(success, 'ApiMessage', 'success');
  }

  @override
  ApiMessage rebuild(void Function(ApiMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiMessageBuilder toBuilder() => new ApiMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiMessage &&
        message == other.message &&
        success == other.success;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, message.hashCode), success.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ApiMessage')
          ..add('message', message)
          ..add('success', success))
        .toString();
  }
}

class ApiMessageBuilder implements Builder<ApiMessage, ApiMessageBuilder> {
  _$ApiMessage? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ApiMessageBuilder();

  ApiMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiMessage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiMessage;
  }

  @override
  void update(void Function(ApiMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ApiMessage build() {
    final _$result = _$v ??
        new _$ApiMessage._(
            message: BuiltValueNullFieldError.checkNotNull(
                message, 'ApiMessage', 'message'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, 'ApiMessage', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
