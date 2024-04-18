import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:untitled5/main.dart';

class NotificationsFirebase {
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> intiNotifications() async {
    await _firebaseMessaging.requestPermission();
    String? token = await _firebaseMessaging.getToken();
    print("===========================");
    print("token: $token");
    intiPushNotifications();
    print("=============================");
  }

  void handleMessage(RemoteMessage? message) {
    if (message == null) return print("null");
    navigatorKey.currentState
        ?.pushNamed("/notificationsHome", arguments: message);
  }

  Future intiPushNotifications() async {
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }
}
