import 'package:flutter/material.dart';
import 'package:hask/helpers/app_theme.dart';

class DiscoverSection extends StatelessWidget {
  const DiscoverSection({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            title,
            style: AppTheme.fontStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
        ),
        const SizedBox(height: 12),
        child
      ],
    );
  }
}
