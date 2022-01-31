import 'dart:async';

import 'package:blogs/blogs.dart';
import 'package:canteen/canteen.dart';
import 'package:college/college.dart';
import 'package:core/core.dart';
import 'package:feed/feed.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_services/mini_services.dart';
import 'package:placement/placement.dart';
import 'package:user/user.dart';

import 'injection.dart';
import 'presentation/core/pages/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Hive.initFlutter();

  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  await initialiseNotifications();
  CoreFunctionality.initialize();
  FeedCoreFunctionality.initialize();
  UserCoreFunctionality.initialize();
  CollegeCoreFunctionality.initialize();
  BlogCoreFunctionality.initialize();
  MiniServicesCoreFunctionality.initialize();
  PlacementCoreFunctionality.initialize();
  await CanteenCoreFunctionality.initialize();

  configureInjection(Environment.prod);
  if (kIsWeb) {
    runApp(const AppWidget());
  } else {
    runZonedGuarded(() {
      runApp(const AppWidget());
    }, FirebaseCrashlytics.instance.recordError);
  }
}

/// Create a [AndroidNotificationChannel] for heads up notifications
AndroidNotificationChannel? channel;

/// Initialize the [FlutterLocalNotificationsPlugin] package.
FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin;

Future<void> initialiseNotifications() async {
  if (kIsWeb) {
    return;
  }
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('ic_launcher');
  final InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
  );
  channel = const AndroidNotificationChannel(
    'Coolage', // id
    'Order Notification', // title
    'This channel is used for important notifications.', // description
    playSound: true,
    importance: Importance.max,
    enableLights: true,
    sound: RawResourceAndroidNotificationSound('notification'),
  );
  flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  await flutterLocalNotificationsPlugin!.initialize(initializationSettings,
      onSelectNotification: (String? payload) async {});
  await flutterLocalNotificationsPlugin!
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel!);
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
}
