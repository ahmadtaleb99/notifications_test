import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notifications_test/services/service_locator.dart';
import 'bloc_observer.dart';
import 'firebase_options.dart';
import 'app/MyApp.dart';

void main() async{

  setupServiceLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  BlocOverrides.runZoned(
        () {
          runApp(MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

