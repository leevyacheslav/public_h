import 'package:flutter/material.dart';
import 'package:hask/helpers/app_theme.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.text,
    this.icon,
    this.backgroundColor,
    this.textColor,
    this.onTap,
    this.selected = false,
  }) : super(key: key);

  final String text;
  final Widget? icon;
  final VoidCallback? onTap;
  final bool selected;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        ),
        elevation: MaterialStateProperty.all(0),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          backgroundColor ?? Theme.of(context).colorScheme.secondaryVariant,
        ),
      ),
      child: IntrinsicWidth(
        child: Row(
          children: [
            if (icon != null)
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: icon!,
              ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: AppTheme.fontStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
