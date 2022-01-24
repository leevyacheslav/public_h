import 'package:flutter/material.dart';
import 'package:hask/helpers/app_theme.dart';

class DiscoverSection extends StatelessWidget {
  const DiscoverSection({
    Key? key,
    required this.title,
    required this.child,
    this.titleWidget,
    this.onMoreTap,
  }) : super(key: key);

  final String title;
  final Widget child;
  final Widget? titleWidget;
  final VoidCallback? onMoreTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),
        if (titleWidget != null)
          titleWidget!
        else
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: AppTheme.fontStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
                if (onMoreTap != null)
                  TextButton(
                    onPressed: onMoreTap,
                    child: Text(
                      'See all',
                      style: AppTheme.fontStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  )
              ],
            ),
          ),
        const SizedBox(height: 12),
        child
      ],
    );
  }
}
