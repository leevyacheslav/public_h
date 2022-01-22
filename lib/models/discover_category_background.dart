import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'discover_category_background.g.dart';

abstract class DiscoverCategoryBackground
    implements
        Built<DiscoverCategoryBackground, DiscoverCategoryBackgroundBuilder> {
  String get top;
  String get bottom;

  DiscoverCategoryBackground._();
  factory DiscoverCategoryBackground(
          [void Function(DiscoverCategoryBackgroundBuilder) updates]) =
      _$DiscoverCategoryBackground;

  static Serializer<DiscoverCategoryBackground> get serializer =>
      _$discoverCategoryBackgroundSerializer;
}
