import 'package:flutter/material.dart';
import 'package:theme_with_cubit/theme/themes/dark/dark_theme_custom.dart';
import 'package:theme_with_cubit/theme/themes/light/light_theme_custom.dart';

abstract class ThemeState {
  final ThemeData themeData;
  const ThemeState(this.themeData);
}

class ThemeLightCubit extends ThemeState {
  ThemeLightCubit() : super(LightThemeCustom().theme);
}

class ThemeDarkCubit extends ThemeState {
  ThemeDarkCubit() : super(DarkThemeCustom().theme);
}
