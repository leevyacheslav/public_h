import 'package:flutter/material.dart';
import 'package:hask/api/services/discover_category_api_service.dart';
import 'package:hask/pages/discover/widgets/discover_posts_carousel.dart';
import 'package:hask/pages/discover/widgets/discover_section.dart';
import 'package:hask/pages/discover/widgets/discover_trending_carousel.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  final service = DiscoverCategoryApiService.create();

  @override
  void initState() {
    _testLoad();
    super.initState();
  }

  _testLoad() async {
    try {
      final cats = await service.getCategories();
      print(cats);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          DiscoverSection(
            child: DiscoverTrendingCarousel(),
            title: 'Trending topics',
          ),
          DiscoverSection(
            child: DiscoverPostsCarousel(),
            title: 'Habits',
          ),
          DiscoverSection(
            child: DiscoverPostsCarousel(),
            title: 'Habits',
          ),
        ],
      ),
    );
  }
}
