import 'package:coolage_merchant/domain/core/helpers/audio_player_handler.dart';
import 'package:coolage_merchant/domain/core/services/notification_service.dart';
import 'package:coolage_merchant/infrastructure/base/canteen/canteen_order_voice_trigger.dart';
import 'package:coolage_merchant/injection.dart';
import 'package:coolage_merchant/presentation/core/pages/app_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
// import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:path_provider/path_provider.dart';
import 'package:audio_service/audio_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';

import 'domain/core/services/background_service.dart';
import 'domain/core/services/hive_initialize.dart';

late AudioHandler audioHandler;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp();
  await Hive.initFlutter();
  await HiveInitialize.initialize();
  if (!kIsWeb) {
    FlutterBackgroundService.initialize(startBackgroundService);
  }
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await NotificationService.setupNotifications();
  runApp(const AppWidget());
}

void startBackgroundService() {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    return;
  }

  final service = FlutterBackgroundService();
  service.setForegroundMode(true);
  service.setAutoStartOnBootMode(true);
  service.setNotificationInfo(
    title: "Order Services",
    content: "Looking for new orders!",
  );
  CanteenOrderVoiceTrigger.triggerVoiceForService();
}
