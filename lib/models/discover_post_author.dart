import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'discover_post_author.g.dart';

abstract class DiscoverPostAuthor
    implements Built<DiscoverPostAuthor, DiscoverPostAuthorBuilder> {
  DiscoverPostAuthor._();

  String get name;
  String get avatar;
  String get specialization;

  factory DiscoverPostAuthor(
          [void Function(DiscoverPostAuthorBuilder) updates]) =
      _$DiscoverPostAuthor;

  static Serializer<DiscoverPostAuthor> get serializer =>
      _$discoverPostAuthorSerializer;
}
