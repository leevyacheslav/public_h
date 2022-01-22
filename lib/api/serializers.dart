import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:hask/models/discover_category.dart';
import 'package:hask/models/discover_category_background.dart';
import 'package:hask/models/discover_category_response.dart';
import 'package:hask/models/discover_post.dart';
import 'package:hask/models/discover_post_author.dart';
import 'package:built_collection/built_collection.dart';

part 'serializers.g.dart';

@SerializersFor([
  DiscoverCategory,
  DiscoverCategoryBackground,
  DiscoverPost,
  DiscoverPostAuthor,
  DiscoverCategoryResponse
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
