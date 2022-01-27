part of 'discover_search_cubit.dart';

@immutable
abstract class DiscoverSearchState {}

class DiscoverSearchInitial extends DiscoverSearchState {}

class DiscoverSearchInProgress extends DiscoverSearchState {}

class DiscoverSearchFailed extends DiscoverSearchState {
  DiscoverSearchFailed({required this.error});
  final String error;
}

class DiscoverSearchSuccess extends DiscoverSearchState {}
