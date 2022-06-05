import 'package:flutter/material.dart';

import 'drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: DrawerWidget(),
      body: Center(
        child: Container(
          child: Text('home page'),
        ),
      ),
    );
  }
}
