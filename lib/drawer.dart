import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notifications_test/Settings_screen.dart';

class DrawerWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: Container(color: Colors.blue,),
          ),
          ListTile(
            leading: Text('Settings'),
            onTap: () {
              Navigator.
              push(context, MaterialPageRoute
                (builder: (context) => SettingScreen()),
              );
            }
          )],
      ),
    );
  }


}