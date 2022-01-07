import 'package:flutter/material.dart';
import 'package:hask/pages/discover/widgets/discover_post_card.dart';

class DiscoverSavedPage extends StatefulWidget {
  const DiscoverSavedPage({Key? key}) : super(key: key);

  @override
  _DiscoverSavedPageState createState() => _DiscoverSavedPageState();
}

class _DiscoverSavedPageState extends State<DiscoverSavedPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemBuilder: (context, indx) {
        return const AspectRatio(
          aspectRatio: 2.2,
          child: DiscoverPostCard(),
        );
      },
      separatorBuilder: (context, indx) => const SizedBox(height: 6),
      itemCount: 2,
    );
  }
}
