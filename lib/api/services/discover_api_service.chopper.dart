// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$DiscoverApiService extends DiscoverApiService {
  _$DiscoverApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = DiscoverApiService;

  @override
  Future<Response<DiscoverCategoryResponse>> getCategories({int? limit}) {
    final $url = '/v1/discover/category';
    final $params = <String, dynamic>{'limit': limit};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<DiscoverCategoryResponse, DiscoverCategoryResponse>($request);
  }

  @override
  Future<Response<DiscoverCategory>> getCategory(int id) {
    final $url = '/v1/discover/category/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<DiscoverCategory, DiscoverCategory>($request);
  }

  @override
  Future<Response<DiscoverPost>> getPost(int id) {
    final $url = '/v1/discover/post/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<DiscoverPost, DiscoverPost>($request);
  }

  @override
  Future<Response<BuiltList<DiscoverPost>>> getCategoryPosts(
      int id, Map<String, dynamic> pagination) {
    final $url = '/v1/discover/category/${id}/posts';
    final $params = pagination;
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BuiltList<DiscoverPost>, DiscoverPost>($request);
  }

  @override
  Future<Response<ApiMessage>> savePost(int id) {
    final $url = '/v1/discover/saved/${id}';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<ApiMessage, ApiMessage>($request);
  }

  @override
  Future<Response<ApiMessage>> unSavePost(int id) {
    final $url = '/v1/discover/saved/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<ApiMessage, ApiMessage>($request);
  }
}
