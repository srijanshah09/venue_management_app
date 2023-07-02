import 'package:flutter/material.dart';
import 'package:venue_management_app/src/utils/theme/widget_themes/text_theme.dart';

import '../../constants/colors.dart';

class AppTheme {
  AppTheme._();

  // makes the class private

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: AppTextTheme.lightTextTheme,
      scaffoldBackgroundColor: backgroundColorLight,
      switchTheme:
          SwitchThemeData(thumbColor: MaterialStateProperty.all(primaryColor)),
      appBarTheme: const AppBarTheme(
        backgroundColor: backgroundColorLight,
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: primaryColor,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      iconTheme: const IconThemeData(
        color: Colors.black87,
      ));
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: AppTextTheme.darkTextTheme,
      scaffoldBackgroundColor: backgroundColorDark,
      switchTheme:
          SwitchThemeData(thumbColor: MaterialStateProperty.all(primaryColor)),
      appBarTheme: const AppBarTheme(
        backgroundColor: backgroundColorDark,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: primaryColor,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      iconTheme: const IconThemeData(
        color: Colors.white,
      ));
}
