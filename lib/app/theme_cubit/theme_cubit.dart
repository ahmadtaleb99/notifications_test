import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:notifications_test/services/service_locator.dart';
import 'package:meta/meta.dart';
import 'package:notifications_test/services/storage/shared_prefrences.dart';
part 'theme_state.dart';


class ThemeCubit extends Cubit<ThemeState> {

 static final   SharedPreferencesStorage   _storage =  getIT<SharedPreferencesStorage>();


  ThemeCubit()
     : super(ThemeState(isDarkMode: _storage.getThemeMode()));

void changeTheme (bool isDarkMode){
  _storage.saveThemeMode(isDarkMode);
  emit(ThemeState(isDarkMode: isDarkMode ));
  }


  void getInitialTheme(){
  // var isDarkMode =  _storage.getThemeMode();
  // emit(ThemeState(isDarkMode: isDarkMode ));

  }
  // //
  // bool  getTheme (){
  //   _storage.getThemeMode() ?? false;
  // }

}
