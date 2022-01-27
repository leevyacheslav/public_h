import 'package:hask/models/requests/paginated_request.dart';

abstract class PaginationListProvider<T> {
  bool isCanLoadMore();

  PaginatedRequest pagination = PaginatedRequest();

  int totalCount = 0;
  List<T> items = [];

  Future<List<T>> load();
  Future<List<T>> loadMore();
  Future<List<T>> makeRequest(PaginatedRequest request);
}

class BasePaginationListProvider<T> {
  PaginatedRequest pagination = PaginatedRequest();

  int totalCount = 0;
  List<T> items = [];

  bool isCanLoadMore() => totalCount > items.length;

  Future<List<T>> load() async {
    reset();
    final items = await makeRequest(pagination);
    this.items = items;
    return items;
  }

  reset() {
    pagination.resetPagination();
    items.clear();
    totalCount = 0;
  }

  Future<List<T>> loadMore() async {
    final tempPagination = pagination.copy();
    tempPagination.next();
    final items = await makeRequest(tempPagination);
    pagination = tempPagination;
    this.items.addAll(items);
    return this.items;
  }

  Future<List<T>> makeRequest(PaginatedRequest request) {
    throw UnimplementedError();
  }
}
