import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hask/helpers/app_theme.dart';
import 'package:hask/pages/discover/widgets/discover_tag.dart';
import 'package:hask/widgets/round_icon_button.dart';

class DiscoverPostCard extends StatelessWidget {
  const DiscoverPostCard({
    Key? key,
    this.title = "",
    this.imageUrl = "",
    this.video = false,
    this.saved = false,
    this.tag,
    this.onSavedTap,
    this.onTap,
  }) : super(key: key);

  final String? tag;
  final String imageUrl;
  final String title;
  final bool video;
  final bool saved;
  final VoidCallback? onSavedTap;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.cover,
              //color: Colos.blac,
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black.withOpacity(0.3),
            ),
            if (tag != null)
              Positioned(
                left: 12,
                top: 14,
                child: DiscoverTag(
                  text: tag!,
                  icon: video ? SvgPicture.asset('assets/svgs/play.svg') : null,
                ),
              ),
            Positioned(
              right: 12,
              top: 14,
              child: RoundIconButton(
                onTap: onSavedTap,
                icon: saved
                    ? SvgPicture.asset(
                        'assets/svgs/bookmark_fill.svg',
                        color: Theme.of(context).colorScheme.primary,
                      )
                    : SvgPicture.asset(
                        'assets/svgs/bookmark.svg',
                        color: Theme.of(context).colorScheme.primary,
                      ),
              ),
            ),
            Positioned(
              left: 12,
              bottom: 12,
              right: 12,
              child: Text(
                title,
                style: AppTheme.fontStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
