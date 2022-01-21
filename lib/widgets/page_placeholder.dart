import 'package:flutter/material.dart';
import 'package:hask/helpers/app_theme.dart';

class PagePlaceholder extends StatelessWidget {
  const PagePlaceholder({
    Key? key,
    required this.title,
    this.icon,
    this.desc,
  }) : super(key: key);

  final String title;
  final Widget? icon;
  final String? desc;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icon != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: icon!,
          ),
        Text(
          title,
          style: AppTheme.fontStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
        if (desc != null)
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Text(
              desc!,
              style: AppTheme.fontStyle(
                fontSize: 14,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          ),
      ],
    );
  }
}
