import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hask/helpers/app_theme.dart';
import 'package:hask/helpers/hex_color.dart';

class DiscoverTrendingTopicsCard extends StatelessWidget {
  const DiscoverTrendingTopicsCard({
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
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  HexColor('#FEB5A0'),
                  HexColor('#FF5A78'),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 12, bottom: 12),
              child: FractionallySizedBox(
                widthFactor: 0.8,
                heightFactor: 0.8,
                child: SvgPicture.asset('assets/temp/temp_illustr.svg'),
              ),
            ),
          ),
          Positioned(
            left: 12,
            top: 12,
            right: 12,
            child: Text(
              'Goals',
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
