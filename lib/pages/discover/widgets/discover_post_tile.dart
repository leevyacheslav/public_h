import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hask/helpers/app_theme.dart';

class DiscoverPostTile extends StatelessWidget {
  const DiscoverPostTile({
    Key? key,
    this.video = false,
  }) : super(key: key);

  final bool video;

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
            child: Image.asset(
              'assets/temp/temp_img.png',
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
                '10:50',
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
          'Как поддерживать ментальное здоровье',
          style: AppTheme.fontStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
      ),
      subtitle: Text(
        'В курсе мы расскажем, с чего начать...',
        style: AppTheme.fontStyle(
          fontSize: 14,
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
    );
  }
}
