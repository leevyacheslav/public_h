import 'package:flutter/material.dart';

class LoadMoreScroll extends StatelessWidget {
  final Widget child;
  final VoidCallback? shouldLoadMore;

  const LoadMoreScroll({
    Key? key,
    required this.child,
    this.shouldLoadMore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
        if (scrollInfo is ScrollEndNotification &&
            scrollInfo.metrics.extentAfter == 0) {
          if (shouldLoadMore != null) shouldLoadMore!();
          return true;
        }
        return false;
      },
      child: child,
    );
  }
}
