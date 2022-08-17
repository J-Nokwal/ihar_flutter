import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'firebase_classes/firebase_notifications.dart';

class LocalNotificationService {
  static void initialize(FlutterLocalNotificationsPlugin notificationsPlugin) {
    final InitializationSettings initializationSettings =
        InitializationSettings(android: AndroidInitializationSettings("@mipmap/ic_launcher"));

    notificationsPlugin.initialize(
      initializationSettings,
      onSelectNotification: (String? payload) async {
        if (payload != null) {
          // switch (jsonDecode(payload)['type']) {
          //   case 'showReport':
          //     try {
          //       launch(jsonDecode(payload)['link']);
          //     } catch (e) {}
          //     break;
          //   default:
          // }
          try {} catch (e) {}
        }
      },
    );
  }

  static void display(RemoteMessage message,
      {required FlutterLocalNotificationsPlugin notificationsPlugin, String? payload}) async {
    try {
      final id = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      final NotificationDetails notificationDetails = NotificationDetails(
        android: AndroidNotificationDetails(
          updatesChannel.id,
          updatesChannel.name,
          channelDescription: updatesChannel.description,
        ),
      );

      if (message.data["type"] == 'silent') {
        return;
      }
      await notificationsPlugin
          .show(
        id,
        message.notification!.title,
        message.notification!.body,
        notificationDetails,
        payload: payload,
      )
          .onError((error, stackTrace) {
        debugPrint(error.toString());
      });
    } on Exception catch (e) {
      print(e.toString());
    }
  }
}
