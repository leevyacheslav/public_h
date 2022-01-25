import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'discover_all_posts_state.dart';

class DiscoverAllPostsCubit extends Cubit<DiscoverAllPostsState> {
  DiscoverAllPostsCubit() : super(DiscoverAllPostsInitial());
}
