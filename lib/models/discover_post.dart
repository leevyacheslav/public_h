import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'discover_post.g.dart';

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
  String? get averageReadintTime;

  factory DiscoverPost([void Function(DiscoverPostBuilder) updates]) =
      _$DiscoverPost;

  static Serializer<DiscoverPost> get serializer => _$discoverPostSerializer;
}


/*


 {
    "id": 132,
    "title": "Future of Social Media: Trends to Watch",
    "description": "",
    "category_name": "Social Media",
    "post_id": null,
    "public": true,
    "duration": null,
    "language": "en",
    "saved": null,
    "media": "http://143.198.52.47/file/discover/post/media/c8796989dd884c75bf38934d73fb599d.png",
    "media_type": "image",
    "thumbnail": null,
    "average_reading_time": "1 minute",
    "author": {
      "name": "Adryan Corcione",
      "avatar": "http://143.198.52.47/file/discover/author/avatar/9f1b515d468888e5bc1c65f490e3b52d.png",
      "specialization": "Business News Daily Contributing Writer"
    },
    "keywords": [
      {
        "keyword": "social"
      },
      {
        "keyword": "media"
      },
      {
        "keyword": "apps"
      }
    ]
  }

*/