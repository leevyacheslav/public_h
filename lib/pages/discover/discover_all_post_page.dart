import 'package:flutter/material.dart';
import 'package:hask/pages/discover/widgets/discover_post_card.dart';

class DiscoverAllPostsPage extends StatefulWidget {
  const DiscoverAllPostsPage({Key? key}) : super(key: key);

  @override
  _DiscoverAllPostsPageState createState() => _DiscoverAllPostsPageState();
}

class _DiscoverAllPostsPageState extends State<DiscoverAllPostsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 8),
        itemBuilder: (context, indx) {
          return const AspectRatio(
            aspectRatio: 2,
            child: DiscoverPostCard(),
          );
        },
        separatorBuilder: (context, indx) => Container(),
        itemCount: 10,
      ),
    );
  }
}
