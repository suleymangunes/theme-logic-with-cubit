import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:theme_with_cubit/product/constants_lottie.dart';
import 'package:theme_with_cubit/product/constants_pads.dart';
import 'package:theme_with_cubit/product/constants_string.dart';
import 'package:theme_with_cubit/theme/cubit/theme_cubit.dart';
import 'package:theme_with_cubit/theme/themes/light/light_theme_custom.dart';

class ThemeChangerLottie extends StatefulWidget {
  const ThemeChangerLottie({super.key});

  @override
  State<ThemeChangerLottie> createState() => _ThemeChangerLottieState();
}

class _ThemeChangerLottieState extends State<ThemeChangerLottie> with TickerProviderStateMixin {
  late AnimationController _lottieController;

  @override
  void initState() {
    super.initState();
    _lottieController = AnimationController(
      vsync: this,
      duration: LottieConstants.lottieDuration,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringConstants.themeChangeLottie),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _changeThemeWithLottie(),
            PadsConstants.sizedboxMiddle,
            const BackPageIcon(),
          ],
        ),
      ),
    );
  }

  BlocBuilder<ThemeCubit, ThemeData> _changeThemeWithLottie() {
    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            _lottieController.animateTo(state == LightThemeCustom().theme ? 0.5 : 1);

            context.read<ThemeCubit>().changeTheme();
          },
          child: Lottie.asset(
            LottieConstants.themeLottiePath,
            height: LottieConstants.lottieBigHeight,
            repeat: false,
            controller: _lottieController,
          ),
        );
      },
    );
  }
}

class BackPageIcon extends StatelessWidget {
  const BackPageIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(Icons.arrow_back_ios_new_outlined),
    );
  }
}
