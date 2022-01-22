import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:hask/models/discover_category_background.dart';
import 'package:hask/models/discover_post.dart';

part 'discover_category.g.dart';

abstract class DiscoverCategory
    implements Built<DiscoverCategory, DiscoverCategoryBuilder> {
  DiscoverCategory._();

  int get id;
  String get title;

  String? get description;
  String? get icon;

  BuiltList<DiscoverPost>? get posts;

  DiscoverCategoryBackground? get background;

  factory DiscoverCategory([void Function(DiscoverCategoryBuilder) updates]) =
      _$DiscoverCategory;

  static Serializer<DiscoverCategory> get serializer =>
      _$discoverCategorySerializer;
}


/*
{
        "id": 80,
        "title": "Social Media",
        "description": "Future of Social Media",
        "background": {
          "top": "#fa0000",
          "bottom": "#e2a981"
        },
        "saved": null,
        "icon": "http://143.198.52.47/file/discover/icon/c72c045bd22df9dc583a5688d98d144b.png",
        "trending": true,
        "language": "en",
        "posts": [
          {
            "id": 132,
            "title": "Future of Social Media: Trends to Watch",
            "short_description": "Social media is always evolving. Keep an eye on these trends to stay ahead of the curve in 2022 and beyond.",
            "category_name": "Social Media",
            "saved": null,
            "duration": null,
            "author": {
              "name": "Adryan Corcione",
              "avatar": "http://143.198.52.47/file/discover/author/avatar/9f1b515d468888e5bc1c65f490e3b52d.png",
              "specialization": "Business News Daily Contributing Writer"
            },
            "media": "http://143.198.52.47/file/discover/post/media/c8796989dd884c75bf38934d73fb599d.png",
            "media_type": "image",
            "thumbnail": null
          }
        ]
      }


*/

