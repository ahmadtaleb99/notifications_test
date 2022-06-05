import 'package:get_it/get_it.dart';
import 'package:notifications_test/services/storage/shared_prefrences.dart';

final getIT = GetIt.instance;


void setupServiceLocator(){


  getIT.registerLazySingleton(() => SharedPrefrencesStorage());
}