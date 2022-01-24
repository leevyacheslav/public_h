import 'package:flutter/material.dart';

class DiscoverTrendingCarousel extends StatelessWidget {
  const DiscoverTrendingCarousel({
    Key? key,
    this.children = const [],
  }) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 1.4,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, indx) {
          return AspectRatio(
            aspectRatio: 4 / 5,
            child: children[indx],
          );
        },
        separatorBuilder: (context, indx) => const SizedBox(width: 6),
        itemCount: children.length,
      ),
    );
  }
}
