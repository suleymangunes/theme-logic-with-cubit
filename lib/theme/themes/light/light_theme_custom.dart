import 'package:flutter/material.dart';

part 'light_theme_constants.dart';

class LightThemeCustom {
  late ThemeData theme;

  LightThemeCustom() {
    theme = ThemeData.light().copyWith(
      //  CUSTOMIZE AREA
      appBarTheme: const AppBarTheme(
        color: LightThemeColors._appBarBackground,
        titleTextStyle: TextStyle(
          fontSize: LightThemeString._appBarTitleSize,
        ),
      ),
    );
  }
}
