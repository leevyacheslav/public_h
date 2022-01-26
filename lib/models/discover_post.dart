import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hask/models/discover_post_author.dart';

part 'discover_post.g.dart';

enum DiscoverPostMediaType { video, image, unknown }

abstract class DiscoverPost
    implements Built<DiscoverPost, DiscoverPostBuilder> {
  DiscoverPost._();

  int get id;
  String get title;
  String? get description;

  @BuiltValueField(wireName: 'category_name')
  String? get categoryName;

  String? get duration;
  String? get thumbnail;
  String get media;

  @BuiltValueField(wireName: 'media_type')
  String get mediaType;

  @BuiltValueField(wireName: 'average_reading_time')
  String? get averageReadingTime;

  DiscoverPostAuthor? get author;

  bool? get saved;

  factory DiscoverPost([void Function(DiscoverPostBuilder) updates]) =
      _$DiscoverPost;

  static Serializer<DiscoverPost> get serializer => _$discoverPostSerializer;

  DiscoverPostMediaType getMediaType() {
    if (mediaType == 'video') return DiscoverPostMediaType.video;
    if (mediaType == 'image') return DiscoverPostMediaType.image;
    return DiscoverPostMediaType.unknown;
  }

  String getImageUrl() => thumbnail ?? media;
}
