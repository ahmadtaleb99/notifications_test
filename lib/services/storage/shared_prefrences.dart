import 'dart:developer';

import 'package:notifications_test/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesStorage {

  late final SharedPreferences  _prefs;
 Future<void> init() async {
   _prefs = await  SharedPreferences.getInstance();
 }



  void saveThemeMode (bool isDarkMode){

    _prefs.setBool(kThemeModeKey, isDarkMode);
  }


  bool getThemeMode()  {

    return   _prefs.getBool(kThemeModeKey) ?? false  ;
  }
}