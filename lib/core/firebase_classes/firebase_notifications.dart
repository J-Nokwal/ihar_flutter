import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';

import '../AppLoacalNotificationServices.dart';
import '../bloc/auth_ bloc/auth_bloc.dart';
import '../injection.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage? message) async {
  await Firebase.initializeApp();
  //TODO:// implement when bakground or terminated app state message come
  if (message != null) {
    if (message.data['type'] == 'updateCarVariants') {
    } else if (message.data['type'] == 'showReport') {
      // int client_lead_id = int.parse(message.data['client_lead_id']);

    }
  }
}

@singleton
class AppFirebaseNotifications {
  AppFirebaseNotifications();
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  Future<void> setup() async {
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    LocalNotificationService.initialize(flutterLocalNotificationsPlugin);
    FirebaseMessaging.instance.getToken().then((value) => print("Message token is: $value"));

    /// Create an Android Notification Channel.
    ///
    /// We use this channel in the `AndroidManifest.xml` file to override the
    /// default FCM channel to enable heads up notifications.
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(updatesChannel);

    /// Update the iOS foreground notification presentation options to allow
    /// heads up notifications.
    await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  //forground
  Future<void> handleforgroundMessage() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      print("foregroung Message came");
      RemoteNotification? notification = message.notification;
      if (message.data['type'] == 'serverOnline') {}
      if (notification != null) {
        AndroidNotification? android = notification.android;

        // implement when forgroung message come
        if (message.data['type'] == 'serverOnline') {
          FirebaseMessaging.instance.unsubscribeFromTopic("serverOnline");
          getIt<AuthBloc>().add(const AuthEvent.checkAuth());
          LocalNotificationService.display(message, notificationsPlugin: flutterLocalNotificationsPlugin);
        } else if (message.data['type'] == 'link') {
          // try {
          // await launchUrl(message.data['link']);
          // } catch (e) {}
          LocalNotificationService.display(message,
              notificationsPlugin: flutterLocalNotificationsPlugin, payload: jsonEncode(message.data));
        } else {
          LocalNotificationService.display(message, notificationsPlugin: flutterLocalNotificationsPlugin);
        }
      }
    });
  }

  Future<void> handleBackgroundOnTapMessage() async {
    ///When the app is in background but opened and user taps
    ///on the notification
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async {
      // implement when bacground(but opened) message button pressed
      if (message.data['type'] == 'serverOnline') {
        try {
          FirebaseMessaging.instance.unsubscribeFromTopic("serverOnline");
          getIt<AuthBloc>().add(const AuthEvent.checkAuth());
        } catch (e) {}
      } else if (message.data['type'] == 'link') {
        try {
          await launchUrl(Uri.parse(message.data['link']), mode: LaunchMode.externalApplication);
        } catch (e) {}
      }
    });
  }

  Future<void> handleTerminatedStateOnTapMessage() async {
    //gives you the message on which user taps
    ///and it opened the app from terminated state
    FirebaseMessaging.instance.getInitialMessage().then((RemoteMessage? message) async {
      if (message != null) {
        // implement when message pressed from terminated state
        if (message.data['type'] == 'serverOnline') {
          try {
            FirebaseMessaging.instance.unsubscribeFromTopic("serverOnline");
          } catch (e) {}
        } else if (message.data['type'] == 'link') {
          try {
            await launchUrl(Uri.parse(message.data['link']), mode: LaunchMode.externalApplication);
          } catch (e) {}
        }
      }
    });
  }
}

AndroidNotificationChannel updatesChannel = const AndroidNotificationChannel(
  'updates', // id
  'Updates channel', // title
  description: 'This channel is used give updates.', // description
  importance: Importance.high,
);
