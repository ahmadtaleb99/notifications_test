import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notifications_test/app/theme_cubit/theme_cubit.dart';
import 'package:notifications_test/constants.dart';
import '../HomeScreen.dart';
import 'bloc/my_app_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MyAppBloc(),
        ),
        BlocProvider(
          create: (context) => ThemeCubit(),
        ),

      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
              home: HomeScreen(),
              themeMode:state.isDarkMode ? ThemeMode.dark : ThemeMode.light ,
              darkTheme: kDarkModeTheme
          );
        },
      ),
    );
  }
}
