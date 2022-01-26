import 'package:chopper/chopper.dart';
import 'package:hask/api/chopper_client_factory.dart';
import 'package:hask/models/api_message.dart';
import 'package:built_collection/built_collection.dart';
import 'package:hask/models/discover_category.dart';
import 'package:hask/models/discover_category_response.dart';
import 'package:hask/models/discover_post.dart';

part 'discover_api_service.chopper.dart';

@ChopperApi(baseUrl: "/v1/discover")
abstract class DiscoverApiService extends ChopperService {
  @Get(path: "/category")
  Future<Response<DiscoverCategoryResponse>> getCategories({
    @Query() int? limit,
  });

  @Get(path: "/category/{id}")
  Future<Response<DiscoverCategory>> getCategory(@Path() int id);

  @Get(path: "/post/{id}")
  Future<Response<DiscoverPost>> getPost(@Path() int id);

  @Get(path: "/category/{id}/posts")
  Future<Response<BuiltList<DiscoverPost>>> getCategoryPosts(
    @Path() int id,
    @QueryMap() Map<String, dynamic> pagination,
  );

  @Post(path: "/saved/{id}")
  Future<Response<ApiMessage>> savePost(
    @Path() int id,
  );

  @Delete(path: "/saved/{id}")
  Future<Response<ApiMessage>> unSavePost(@Path() int id);

  static DiscoverApiService create() {
    final client = ChopperClientFactory.create(_$DiscoverApiService());
    return _$DiscoverApiService(client);
  }
}
