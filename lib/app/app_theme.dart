import 'package:crafty_bay/app/provider/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData _lightThemeData = ThemeData(
    colorSchemeSeed: AppColors.themeColor,
    brightness: Brightness.light,
  );
  static final ThemeData _darkThemeData = ThemeData(
    colorSchemeSeed: AppColors.themeColor,
    brightness: Brightness.dark,
  );
  static ThemeData get lightTheme => _lightThemeData;
  static ThemeData get darkTheme => _darkThemeData;
}
