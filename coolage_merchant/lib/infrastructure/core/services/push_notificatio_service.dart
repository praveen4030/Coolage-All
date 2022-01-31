import 'dart:io';
import 'dart:math';

import 'package:coolage_merchant/domain/core/services/notification_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../main.dart';

mixin PushNotificationService {
  static Future initialise(BuildContext context) async {
    if (kIsWeb) {
      return;
    }
    FirebaseMessaging.onMessage.listen((RemoteMessage? message) async {
      if (message != null) {
        RemoteNotification? notification = message.notification;
        debugPrint('new notification');
        if (notification != null) {
          AndroidNotification? android = notification.android;
          int id = Random().nextInt(pow(2, 31).toInt() - 1);
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
                    playSound: true,
                    enableLights: true,
                    color: const Color.fromARGB(255, 255, 0, 0),
                    ledColor: const Color.fromARGB(255, 255, 0, 0),
                    ledOnMs: 1000,
                    ledOffMs: 500,
                    sound: RawResourceAndroidNotificationSound('new_order'),
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
    if (remoteMessage != null) {
      RemoteNotification? notification = remoteMessage.notification;
      debugPrint('new notification');
      if (notification != null) {
        AndroidNotification? android = notification.android;
        int id = Random().nextInt(pow(2, 31).toInt() - 1);
        if (android != null) {
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
                  playSound: true,
                  enableLights: true,
                  color: const Color.fromARGB(255, 255, 0, 0),
                  ledColor: const Color.fromARGB(255, 255, 0, 0),
                  ledOnMs: 1000,
                  ledOffMs: 500,
                  sound: RawResourceAndroidNotificationSound('new_order'),
                  icon: 'ic_launcher',
                ),
              ));
        }
      }
    }
  }
}
