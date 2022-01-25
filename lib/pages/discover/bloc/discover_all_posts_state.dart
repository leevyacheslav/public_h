part of 'discover_all_posts_cubit.dart';

@immutable
abstract class DiscoverAllPostsState {}

class DiscoverAllPostsInitial extends DiscoverAllPostsState {}

class DiscoverAllPostsInProgress extends DiscoverAllPostsState {}

class DiscoverAllPostsFailed extends DiscoverAllPostsState {
  DiscoverAllPostsFailed({required this.error});
  final String error;
}

class DiscoverAllPostsSuccess extends DiscoverAllPostsState {}
