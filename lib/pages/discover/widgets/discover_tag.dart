import 'package:flutter/material.dart';
import 'package:hask/helpers/app_theme.dart';

class DiscoverTag extends StatelessWidget {
  const DiscoverTag({
    Key? key,
    required this.text,
    this.icon,
  }) : super(key: key);

  final String text;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Theme.of(context).colorScheme.background,
      ),
      child: Row(
        children: [
          if (icon != null)
            Padding(
              padding: const EdgeInsets.only(right: 6),
              child: icon!,
            ),
          Text(
            text,
            style: AppTheme.fontStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
