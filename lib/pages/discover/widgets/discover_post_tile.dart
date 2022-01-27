import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hask/helpers/app_theme.dart';

class DiscoverPostTile extends StatelessWidget {
  const DiscoverPostTile({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.desc,
    this.video = false,
    this.videoLength,
  }) : super(key: key);

  final bool video;
  final String? videoLength;
  final String imageUrl;
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 60,
            width: 60,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          if (video) ...[
            SvgPicture.asset(
              'assets/svgs/play.svg',
              height: 20,
              width: 20,
              color: Colors.white,
            ),
            Positioned(
              right: 4,
              bottom: 4,
              child: Text(
                videoLength ?? '',
                style: AppTheme.fontStyle(
                  fontSize: 7,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).colorScheme.background,
                ),
              ),
            ),
          ],
        ],
      ),
      title: Padding(
        padding: const EdgeInsets.only(bottom: 6),
        child: Text(
          title,
          maxLines: 1,
          style: AppTheme.fontStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
      ),
      subtitle: Text(
        desc,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: AppTheme.fontStyle(
          fontSize: 14,
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
    );
  }
}
