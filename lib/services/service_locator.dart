import 'package:get_it/get_it.dart';
import 'package:notifications_test/services/storage/shared_prefrences.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIT = GetIt.instance;


void setupServiceLocator() {

  getIT.registerSingletonAsync<SharedPreferencesStorage>(() async {
    final configService = SharedPreferencesStorage();
    await configService.init();
    return configService;
  });}