import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_with_cubit/theme/components/theme_changer_button.dart';
import 'package:theme_with_cubit/theme/components/theme_changer_lottie.dart';
import 'package:theme_with_cubit/theme/cubit/theme_cubit.dart';
import 'package:theme_with_cubit/theme/themes/dark/dark_theme_custom.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: (context, themeState) {
        return MaterialApp(
          title: 'Material App',
          theme: themeState,
          darkTheme: DarkThemeCustom().theme,
          themeMode: ThemeMode.system,
          home: Scaffold(
            appBar: AppBar(
              title: const Text('Material App Bar'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ThemeChanger(),
                ThemeChangerLottie(),
              ],
            ),
          ),
        );
      },
    );
  }
}
