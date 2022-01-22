// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_category_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$DiscoverCategoryApiService extends DiscoverCategoryApiService {
  _$DiscoverCategoryApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = DiscoverCategoryApiService;

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
}
