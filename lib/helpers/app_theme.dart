import 'package:flutter/material.dart';
import 'package:hask/helpers/hex_color.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: Colors.white,
      iconTheme: IconThemeData(
        color: AppTheme.primaryColor(),
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: HexColor('#546CFF'),
      onPrimary: Colors.white,
      secondary: HexColor('#DE095C'),
      background: Colors.white,
      onBackground: HexColor('#2C2D35'),
      surface: HexColor('#F6F6F6'),
      onSurface: HexColor('#BBC4D2'),
      error: Colors.red,
    ),
    cardTheme: CardTheme(
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    iconTheme: const IconThemeData(
      color: Colors.white54,
    ),
  );

  static Color surfaceColor() => HexColor('#F6FAFB');
  static Color primaryColor() => HexColor('#0D2B50');
  static Color secondaryColor() => HexColor('#7D889C');
  static Color onPrimary() => HexColor('#055052');

  // Fonts

  static TextStyle fontStyle({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? height,
    List<Shadow>? shadows,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: fontSize,
        fontFamily: 'Gilroy',
        color: color,
        fontWeight: fontWeight,
        height: height,
        shadows: shadows,
        decoration: decoration,
      );
}
