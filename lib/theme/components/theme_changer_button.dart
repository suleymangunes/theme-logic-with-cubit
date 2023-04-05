import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_with_cubit/product/constants_pads.dart';
import 'package:theme_with_cubit/theme/components/theme_changer_lottie.dart';
import 'package:theme_with_cubit/theme/cubit/theme_cubit.dart';
import 'package:theme_with_cubit/theme/themes/light/light_theme_custom.dart';

class ThemeChanger extends StatelessWidget {
  const ThemeChanger({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _changeThemeWithButton(),
          PadsConstants.sizedboxMiddle,
          const ForwardPageIcon(),
        ],
      ),
    );
  }

  BlocBuilder<ThemeCubit, ThemeData> _changeThemeWithButton() {
    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: (context, state) {
        return IconButton(
          onPressed: () {
            context.read<ThemeCubit>().changeTheme();
          },
          icon: state == LightThemeCustom().theme ? const Icon(Icons.dark_mode) : const Icon(Icons.light_mode),
        );
      },
    );
  }
}

class ForwardPageIcon extends StatelessWidget {
  const ForwardPageIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return const ThemeChangerLottie();
          },
        ));
      },
      icon: const Icon(Icons.arrow_forward_ios_rounded),
    );
  }
}
