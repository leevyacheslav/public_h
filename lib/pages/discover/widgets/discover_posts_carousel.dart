import 'package:flutter/material.dart';
import 'package:hask/pages/discover/widgets/discover_post_card.dart';

class DiscoverPostsCarousel extends StatelessWidget {
  const DiscoverPostsCarousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 1.4,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, indx) {
          return const AspectRatio(
            aspectRatio: 1.5,
            child: DiscoverPostCard(),
          );
        },
        separatorBuilder: (context, indx) => const SizedBox(width: 6),
        itemCount: 10,
      ),
    );
  }
}
