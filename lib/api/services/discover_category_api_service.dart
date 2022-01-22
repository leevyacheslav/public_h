//part 'discover_category_api_service.g.dart';

import 'package:built_value/standard_json_plugin.dart';
import 'package:chopper/chopper.dart';
import 'package:hask/api/built_value_converter.dart';
import 'package:hask/api/dynamic_header_interceptor.dart';
import 'package:hask/api/serializers.dart';
//import 'package:built_collection/built_collection.dart';
import 'package:hask/models/discover_category.dart';
// import 'package:hask/models/discover_category.dart';
import 'package:hask/models/discover_category_response.dart';

part 'discover_category_api_service.chopper.dart';

@ChopperApi(baseUrl: "/v1/discover/category")
abstract class DiscoverCategoryApiService extends ChopperService {
  @Get()
  Future<Response<DiscoverCategoryResponse>> getCategories(
      {@Query() int? limit});

  @Get(path: "/{id}")
  Future<Response<DiscoverCategory>> getCategory(@Path() int id);

  static DiscoverCategoryApiService create() {
    final builder = serializers.toBuilder();
    builder.addPlugin(StandardJsonPlugin());

    final jsonSerializers = builder.build();
    final converter = BuiltValueConverter(jsonSerializers);

    final client = ChopperClient(
      baseUrl: 'http://143.198.52.47/api',
      services: [_$DiscoverCategoryApiService()],
      converter: converter,
      interceptors: [
        HttpLoggingInterceptor(),
        DynamicHeaderInterceptor(),
      ],
    );
    return _$DiscoverCategoryApiService(client);
  }
}
