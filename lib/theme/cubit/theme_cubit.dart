import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_with_cubit/theme/cubit/theme_state.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(ThemeLightCubit().themeData);

  void changeTheme() {
    emit(state == ThemeDarkCubit().themeData ? ThemeLightCubit().themeData : ThemeDarkCubit().themeData);
  }
}
