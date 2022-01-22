import 'package:built_value/standard_json_plugin.dart';
import 'package:chopper/chopper.dart';
import 'package:hask/api/built_value_converter.dart';
import 'package:hask/api/dynamic_header_interceptor.dart';
import 'package:hask/api/serializers.dart';

class ChopperClientFactory {
  static ChopperClient create(ChopperService service) {
    final builder = serializers.toBuilder();
    builder.addPlugin(StandardJsonPlugin());

    final jsonSerializers = builder.build();
    final converter = BuiltValueConverter(jsonSerializers);

    final client = ChopperClient(
      baseUrl: 'http://143.198.52.47/api',
      services: [service],
      converter: converter,
      interceptors: [
        HttpLoggingInterceptor(),
        DynamicHeaderInterceptor(),
      ],
    );

    return client;
  }
}
