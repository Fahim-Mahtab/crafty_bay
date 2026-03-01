import 'package:crafty_bay/app/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData _lightThemeData = ThemeData(
    colorSchemeSeed: AppColors.themeColor,
    brightness: Brightness.light,
    progressIndicatorTheme: _progressIndicatorThemeData,
    scaffoldBackgroundColor: Colors.white,
    textTheme: _textTheme,
    inputDecorationTheme: _inputDecorationTheme,
    filledButtonTheme: _filledButtonThemeData,
  );
  static final ThemeData _darkThemeData = ThemeData(
    colorSchemeSeed: AppColors.themeColor,
    brightness: Brightness.dark,
    progressIndicatorTheme: _progressIndicatorThemeData,
    textTheme: _textTheme,
    inputDecorationTheme: _inputDecorationTheme,
    filledButtonTheme: _filledButtonThemeData,
  );
  static ProgressIndicatorThemeData get _progressIndicatorThemeData =>
      const ProgressIndicatorThemeData(color: AppColors.themeColor);
  static TextTheme get _textTheme {
    return TextTheme(
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        //color: AppColors.themeColor,
      ),
    );
  }

  static InputDecorationTheme get _inputDecorationTheme => InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 16),
    hintStyle: TextStyle(color: Colors.grey),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: AppColors.themeColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: AppColors.themeColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: AppColors.themeColor),
    ),
  );
  static FilledButtonThemeData get _filledButtonThemeData =>
      FilledButtonThemeData(
        style: FilledButton.styleFrom(
          fixedSize: const Size.fromWidth(double.maxFinite),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: EdgeInsets.symmetric(vertical: 12),
          backgroundColor: AppColors.themeColor,
        ),
      );
  static ThemeData get lightTheme => _lightThemeData;
  static ThemeData get darkTheme => _darkThemeData;
}
