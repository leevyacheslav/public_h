import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerView extends StatelessWidget {
  const ShimmerView({
    Key? key,
    required this.child,
    this.enabled = true,
  }) : super(key: key);

  final Widget child;
  final bool enabled;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      enabled: enabled,
      child: child,
    );
  }
}
