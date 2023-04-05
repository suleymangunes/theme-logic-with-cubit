import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_with_cubit/product/constants_string.dart';
import 'package:theme_with_cubit/theme/components/theme_changer_button.dart';
import 'package:theme_with_cubit/theme/cubit/theme_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: (context, themeState) {
        return MaterialApp(
          title: 'Material App',
          theme: themeState,
          // darkTheme: DarkThemeCustom().theme,
          themeMode: ThemeMode.system,
          home: Scaffold(
            appBar: AppBar(
              title: const Text(StringConstants.themeChangeButton),
            ),
            body: const ThemeChanger(),
          ),
        );
      },
    );
  }
}
