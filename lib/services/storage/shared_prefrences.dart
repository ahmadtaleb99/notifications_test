import 'package:notifications_test/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefrencesStorage {

 late final SharedPreferences _prefs;
 void _init()async {
   _prefs = await  SharedPreferences.getInstance();
 }
  SharedPrefrencesStorage(){
    _init();
  }


  void saveThemeMode (bool isDarkMode){
    _prefs.setBool(kThemeModeKey, isDarkMode);
  }


  bool   getThemeMode(){
 return   _prefs.getBool(kThemeModeKey) ?? false  ;
  }
}