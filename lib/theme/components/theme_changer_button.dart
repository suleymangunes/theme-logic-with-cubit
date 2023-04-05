import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_with_cubit/theme/cubit/theme_cubit.dart';
import 'package:theme_with_cubit/theme/themes/light/light_theme_custom.dart';

class ThemeChanger extends StatelessWidget {
  const ThemeChanger({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (context, state) {
          return IconButton(
            onPressed: () {
              context.read<ThemeCubit>().changeTheme();
            },
            icon: state == LightThemeCustom().theme ? const Icon(Icons.dark_mode) : const Icon(Icons.light_mode),
          );
        },
      ),
    );
  }
}
