import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    Key? key,
    required this.icon,
    this.size = 15,
    this.padding = 8,
    this.onTap,
  }) : super(key: key);

  final Widget icon;
  final double size;
  final double padding;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: SizedBox(
            child: icon,
            height: size,
            width: size,
          ),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          size + padding / 2,
        ),
      ),
    );
  }
}
