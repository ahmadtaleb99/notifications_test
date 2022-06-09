import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {

  FlutterLocalNotificationsPlugin _plugin = FlutterLocalNotificationsPlugin();

  void init (Function(String?)? selectNotification) async {
    const AndroidInitializationSettings initializationSettingsAndroid =
    AndroidInitializationSettings('@mipmap/ic_launcher');
    final IOSInitializationSettings initializationSettingsIOS =
    IOSInitializationSettings(
        onDidReceiveLocalNotification: null);

    final InitializationSettings initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );
    await _plugin.initialize(initializationSettings,
        onSelectNotification: selectNotification);
  }
    
  
  
  void showNotification (String payload){
    _plugin.show(payload.hashCode, 'title', 'body',
        NotificationDetails(
      android: AndroidNotificationDetails(
        '123','that is the channel name',
        channelDescription:   'that is the channel description',
        priority: Priority.high
      ),


    ),
    payload: payload);
  }
// initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project

}