import 'package:bloc/bloc.dart';
import 'package:hask/api/services/discover_api_service.dart';
import 'package:hask/models/discover_post.dart';
import 'package:meta/meta.dart';

part 'discover_post_state.dart';

class DiscoverPostCubit extends Cubit<DiscoverPostState> {
  DiscoverPostCubit({required this.postId}) : super(DiscoverPostInitial());

  final int postId;
  bool isSaved = false;
  DiscoverPost? post;

  final _service = DiscoverApiService.create();

  loadPost() async {
    emit(DiscoverPostInProgress());
    try {
      final response = await _service.getPost(postId);
      final post = response.body;

      this.post = post;

      final error = response.error;
      if (error != null) {
        emit(DiscoverPostFailed(error: error.toString()));
        return;
      }
      if (post != null) {
        isSaved = post.saved ?? false;
        emit(DiscoverPostSuccess(post: post));
      }
    } catch (e) {
      emit(DiscoverPostFailed(error: e.toString()));
    }
  }

  setSaved(bool saved) async {
    try {
      final _ = saved
          ? await _service.unSavePost(postId)
          : await _service.savePost(postId);
      isSaved = saved;
      emit(DiscoverPostSuccess(post: post!));
    } catch (e) {
      emit(DiscoverPostFailed(error: e.toString()));
    }
  }
}
