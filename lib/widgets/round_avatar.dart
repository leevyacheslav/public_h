import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RoundAvatar extends StatelessWidget {
  final String url;
  final double radius;
  final Color? backgroundColor;

  const RoundAvatar({
    Key? key,
    required this.url,
    this.radius = 30,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: radius,
      height: radius,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(radius / 2),
        ),
        color: backgroundColor,
      ),
      child: CachedNetworkImage(
        imageUrl: url,
        fit: BoxFit.cover,
        placeholder: (context, path) => const Placeholder(),
        /*
        placeholder: (context, path) => SvgPicture.asset(
          'assets/images/empty_user_avatar.svg',
        ),*/
      ),
    );
  }
}
