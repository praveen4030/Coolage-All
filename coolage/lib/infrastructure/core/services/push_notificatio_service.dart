import 'dart:math';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../../../main.dart';

mixin PushNotificationService {
  static Future initialise(BuildContext context) async {
    FirebaseMessaging.onMessage.listen((RemoteMessage? message) async {
      if (message != null) {
        final RemoteNotification? notification = message.notification;
        debugPrint('new notification');
        if (notification != null) {
          final AndroidNotification? android = notification.android;
          final int id = Random().nextInt(pow(2, 31).toInt() - 1);
          if (android != null && !kIsWeb) {
            flutterLocalNotificationsPlugin!.show(
                id,
                notification.title,
                notification.body,
                NotificationDetails(
                  android: AndroidNotificationDetails(
                    channel!.id,
                    channel!.name,
                    channel!.description,
                    priority: Priority.max,
                    enableLights: true,
                    color: const Color.fromARGB(255, 255, 0, 0),
                    ledColor: const Color.fromARGB(255, 255, 0, 0),
                    ledOnMs: 1000,
                    ledOffMs: 500,
                    sound: const RawResourceAndroidNotificationSound(
                        'notification'),
                    icon: 'ic_launcher',
                  ),
                ));
          }
        }
      }
    });

    FirebaseMessaging.onBackgroundMessage(getBackgroundMessage);
  }

  static Future<void> getBackgroundMessage(RemoteMessage remoteMessage) async {
    final RemoteNotification? notification = remoteMessage.notification;
    debugPrint('new notification');
    if (notification != null) {
      final AndroidNotification? android = notification.android;
      final int id = Random().nextInt(pow(2, 31).toInt() - 1);
      if (android != null && !kIsWeb) {
        flutterLocalNotificationsPlugin!.show(
            id,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel!.id,
                channel!.name,
                channel!.description,
                importance: Importance.max,
                priority: Priority.max,
                enableLights: true,
                color: const Color.fromARGB(255, 255, 0, 0),
                ledColor: const Color.fromARGB(255, 255, 0, 0),
                ledOnMs: 1000,
                ledOffMs: 500,
                sound:
                    const RawResourceAndroidNotificationSound('notification'),
                icon: 'ic_launcher',
              ),
            ));
      }
    }
  }
}
