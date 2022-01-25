part of 'discover_post_cubit.dart';

@immutable
abstract class DiscoverPostState {}

class DiscoverPostInitial extends DiscoverPostState {}

class DiscoverPostInProgress extends DiscoverPostState {}

class DiscoverPostFailed extends DiscoverPostState {
  DiscoverPostFailed({required this.error});
  final String error;
}

class DiscoverPostSuccess extends DiscoverPostState {
  DiscoverPostSuccess({required this.post});
  final DiscoverPost post;
}
