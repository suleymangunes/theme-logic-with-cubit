import 'package:flutter/material.dart';

part 'dark_theme_constants.dart';

class DarkThemeCustom {
  late ThemeData theme;

  DarkThemeCustom() {
    theme = ThemeData.dark().copyWith(
      //  CUSTOMIZE AREA
      appBarTheme: const AppBarTheme(
        color: DarkThemeColors._appBarBackground,
        titleTextStyle: TextStyle(
          fontSize: DarkThemeString._appBarTitleSize,
        ),
      ),
    );
  }
}
