import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_with_cubit/app.dart';
import 'package:theme_with_cubit/cubit_observer.dart';
import 'package:theme_with_cubit/theme/cubit/theme_cubit.dart';

void main() {
  Bloc.observer = CubitObserver();
  runApp(
    BlocProvider(
      create: (context) => ThemeCubit(),
      child: const MyApp(),
    ),
  );
}
