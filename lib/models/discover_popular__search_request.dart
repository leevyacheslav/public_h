import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'discover_popular__search_request.g.dart';

abstract class DiscoverPopularSearchRequest
    implements
        Built<DiscoverPopularSearchRequest,
            DiscoverPopularSearchRequestBuilder> {
  DiscoverPopularSearchRequest._();

  int get id;
  String get request;

  factory DiscoverPopularSearchRequest(
          [void Function(DiscoverPopularSearchRequestBuilder) updates]) =
      _$DiscoverPopularSearchRequest;

  static Serializer<DiscoverPopularSearchRequest> get serializer =>
      _$discoverPopularSearchRequestSerializer;
}
