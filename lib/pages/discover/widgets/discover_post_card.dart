import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hask/helpers/app_theme.dart';
import 'package:hask/pages/discover/widgets/discover_tag.dart';
import 'package:hask/widgets/round_icon_button.dart';

class DiscoverPostCard extends StatelessWidget {
  const DiscoverPostCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/temp/temp_img.png',
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 12,
            top: 14,
            child: DiscoverTag(
              text: 'Habits',
              icon: SvgPicture.asset('assets/svgs/play.svg'),
            ),
          ),
          Positioned(
            right: 12,
            top: 14,
            child: RoundIconButton(
              icon: SvgPicture.asset(
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
              'Начни правильно очищать кожу дома',
              style: AppTheme.fontStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
