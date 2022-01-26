import 'package:bloc/bloc.dart';
import 'package:hask/api/services/discover_api_service.dart';
import 'package:hask/helpers/debounce_executable.dart';
import 'package:hask/models/discover_post.dart';
import 'package:hask/models/requests/paginated_request.dart';
import 'package:meta/meta.dart';
import 'package:built_collection/built_collection.dart';

part 'discover_all_posts_state.dart';

class DiscoverAllPostsCubit extends Cubit<DiscoverAllPostsState>
    with DebounceExecutable {
  DiscoverAllPostsCubit({required this.categoryId})
      : super(DiscoverAllPostsInitial());

  final int categoryId;

  final _service = DiscoverApiService.create();
  var _pagination = PaginatedRequest();

  bool isCanLoadMore = false;

  BuiltList<DiscoverPost> posts = BuiltList<DiscoverPost>();

  loadData() async {
    emit(DiscoverAllPostsInProgress());
    try {
      final response =
          await _service.getCategoryPosts(categoryId, _pagination.toJson());
      final error = response.error;
      if (error != null) {
        emit(DiscoverAllPostsFailed(error: error.toString()));
        return;
      }
      final body = response.body;
      if (body != null) {
        posts = body;
        isCanLoadMore = _checkIsCanLoadMore(body.length);
      }

      emit(DiscoverAllPostsSuccess());
    } catch (e) {
      emit(DiscoverAllPostsFailed(error: e.toString()));
    }
  }

  loadMore() async {
    if (!isCanLoadMore) {
      return;
    }
    debounce(
      name: 'DiscoverAllPostsCubit',
      execute: () async {
        try {
          final pagination = _pagination.copy();
          pagination.next();

          final response =
              await _service.getCategoryPosts(categoryId, pagination.toJson());
          final error = response.error;
          if (error != null) {
            emit(DiscoverAllPostsFailed(error: error.toString()));
            return;
          }

          _pagination = pagination;

          final body = response.body;
          if (body != null) {
            posts = body;
            isCanLoadMore = _checkIsCanLoadMore(body.length);
          }

          emit(DiscoverAllPostsSuccess());
        } catch (e) {
          emit(DiscoverAllPostsFailed(error: e.toString()));
        }
      },
    );
  }

  bool _checkIsCanLoadMore(int count) => !(count < _pagination.limit);
}
