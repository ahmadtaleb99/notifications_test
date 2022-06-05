import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/theme_cubit/theme_cubit.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),
        body: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            return Center(
              child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dark mode'),
                  Switch(onChanged: (bool value) {
                    context.read<ThemeCubit>().changeTheme(value);
                  }, value: state.isDarkMode,

                  ),
                ],
              ),
            );
          },
        )
    );
  }
}
