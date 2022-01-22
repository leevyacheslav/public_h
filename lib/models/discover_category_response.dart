import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hask/models/discover_category.dart';

part 'discover_category_response.g.dart';

abstract class DiscoverCategoryResponse
    implements
        Built<DiscoverCategoryResponse, DiscoverCategoryResponseBuilder> {
  DiscoverCategoryResponse._();

  BuiltList<DiscoverCategory> get all;
  BuiltList<DiscoverCategory> get trending;

  factory DiscoverCategoryResponse(
          [void Function(DiscoverCategoryResponseBuilder) updates]) =
      _$DiscoverCategoryResponse;

  static Serializer<DiscoverCategoryResponse> get serializer =>
      _$discoverCategoryResponseSerializer;
}
