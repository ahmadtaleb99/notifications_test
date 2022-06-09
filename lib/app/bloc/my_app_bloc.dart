import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:meta/meta.dart';
import 'package:notifications_test/services/notification/notification_service.dart';
import 'package:notifications_test/services/service_locator.dart';

part 'my_app_event.dart';
part 'my_app_state.dart';

class MyAppBloc extends Bloc<MyAppEvent, MyAppState> {

    final firebase = FirebaseMessaging.instance;
    _onSelect(String ?  payload){
      print('here');
      print(payload);
    }
  final _notificationService = getIT<NotificationService>();
  MyAppBloc() : super(MyAppInitial()) {

    FirebaseMessaging.onMessage.listen(RemoteMessage message){

    }
    _notificationService.init(_onSelect);
    on<AppStarted>((event, emit) {

      _notificationService.showNotification('payload');
    });
  }
}

