import 'package:bloc/bloc.dart';
import 'package:hask/api/services/discover_api_service.dart';
import 'package:hask/models/discover_post.dart';
import 'package:meta/meta.dart';

part 'discover_post_state.dart';

class DiscoverPostCubit extends Cubit<DiscoverPostState> {
  DiscoverPostCubit({required this.postId}) : super(DiscoverPostInitial());

  final int postId;

  final _service = DiscoverApiService.create();

  loadPost() async {
    try {
      final response = await _service.getPost(postId);
      final post = response.body;
      final error = response.error;
      if (error != null) {
        emit(DiscoverPostFailed(error: error.toString()));
        return;
      }
      if (post != null) {
        emit(DiscoverPostSuccess(post: post));
      }
    } catch (e) {
      emit(DiscoverPostFailed(error: e.toString()));
    }
  }
}
