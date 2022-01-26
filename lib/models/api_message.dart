import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_message.g.dart';

abstract class ApiMessage implements Built<ApiMessage, ApiMessageBuilder> {
  String get message;
  bool get success;

  ApiMessage._();
  factory ApiMessage([void Function(ApiMessageBuilder) updates]) = _$ApiMessage;

  static Serializer<ApiMessage> get serializer => _$apiMessageSerializer;
}
