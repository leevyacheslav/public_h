import 'package:chopper/chopper.dart';
import 'package:hask/api/chopper_client_factory.dart';
//import 'package:built_collection/built_collection.dart';
import 'package:hask/models/discover_category.dart';
import 'package:hask/models/discover_category_response.dart';

part 'discover_category_api_service.chopper.dart';

@ChopperApi(baseUrl: "/v1/discover/category")
abstract class DiscoverCategoryApiService extends ChopperService {
  @Get()
  Future<Response<DiscoverCategoryResponse>> getCategories({
    @Query() int? limit,
  });

  @Get(path: "/{id}")
  Future<Response<DiscoverCategory>> getCategory(@Path() int id);

  static DiscoverCategoryApiService create() {
    final client = ChopperClientFactory.create(_$DiscoverCategoryApiService());
    return _$DiscoverCategoryApiService(client);
  }
}
