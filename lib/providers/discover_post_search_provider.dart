import 'package:hask/api/services/discover_api_service.dart';
import 'package:hask/models/discover_post.dart';
import 'package:hask/models/requests/paginated_request.dart';
import 'package:hask/providers/pagination_list_provider.dart';

class DiscoverPostSearchProvider
    extends BasePaginationListProvider<DiscoverPost> {
  final _service = DiscoverApiService.create();

  String query = '';

  bool _isCanLoadMore = false;

  @override
  bool isCanLoadMore() => _isCanLoadMore;

  @override
  reset() {
    _isCanLoadMore = false;
    return super.reset();
  }

  @override
  Future<List<DiscoverPost>> makeRequest(PaginatedRequest request) async {
    final response = await _service.searchPosts(query, request.toJson());
    final error = response.error;
    if (error != null) {
      return Future.error(error);
    }
    final items = response.body?.toList() ?? [];
    _isCanLoadMore = !(items.length < pagination.limit);
    return items;
  }
}
