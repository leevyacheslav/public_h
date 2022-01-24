part of 'discover_cubit.dart';

@immutable
abstract class DiscoverState {}

class DiscoverInitial extends DiscoverState {}

class DiscoverInProgress extends DiscoverState {}

class DiscoverFailed extends DiscoverState {
  DiscoverFailed({required this.error});

  final String error;
}

class DiscoverSuccess extends DiscoverState {
  DiscoverSuccess({required this.response});

  final DiscoverCategoryResponse response;
}
