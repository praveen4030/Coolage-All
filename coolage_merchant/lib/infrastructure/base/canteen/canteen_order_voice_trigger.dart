import 'dart:async';

import 'package:audio_service/audio_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage_merchant/domain/core/helpers/audio_player_handler.dart';
import 'package:coolage_merchant/domain/core/helpers/getter.dart';
import 'package:coolage_merchant/domain/core/helpers/hive_constants.dart';
import 'package:coolage_merchant/domain/models/local/canteen_local_details.dart';
import 'package:coolage_merchant/domain/user/cool_user.dart';
import 'package:coolage_merchant/infrastructure/core/firebase_helpers.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
// import 'package:flutter_sound/public/flutter_sound_player.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_session/audio_session.dart';
import 'package:flutter/foundation.dart';
import 'package:coolage_merchant/main.dart';

mixin CanteenOrderVoiceTrigger {
  static bool isRunningRecurring = false;
  static Timer? timer;

  static Future<void> triggerVoice(
      {BuildContext? context, String? canteenId}) async {
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration.speech());
    _player.playbackEventStream.listen((event) {},
        onError: (Object e, StackTrace stackTrace) {
      print('A stream error occurred: $e');
    });
    FirebaseFirestore.instance.canteenBasicDetailsCollection
        .doc(context != null ? Getters.getCurrentCanteenId(context) : canteenId)
        .canteenOngoingOrdersCollection
        .limit(1)
        .where('orderStatus', isEqualTo: "pending")
        .snapshots()
        .listen((QuerySnapshot snapshot) async {
      if (snapshot.docs.isNotEmpty) {
        debugPrint("Playing new order sound...................");
        if (!isPlaySound()) {
          stopSound();
          return;
        }
        audioHandler.play();
        timer = Timer.periodic(const Duration(seconds: 10), (timer) async {
          if (!isPlaySound()) {
            stopSound();
          }
          Fluttertoast.showToast(msg: "New order received");
          audioHandler.rewind();
          audioHandler.play();
          debugPrint("Playing recurring sound...................");
        });
      } else {
        stopSound();
      }
    });
  }

  static Future<void> stopSound() async {
    if (timer != null) {
      timer!.cancel();
      await audioHandler.stop();
      await _player.pause();
      await _player.dispose();
    }
  }

  static bool isPlaySound() {
    final canteenLocalBox = Hive.box<CanteenLocalDetails>(
        HiveConstants.CANTEEN_LOCAL_DETAILS_BOX_NAME);
    CanteenLocalDetails? canteenLocalDetails = canteenLocalBox.get(0);
    if (canteenLocalDetails == null) return true;
    return canteenLocalDetails.isVoiceAlertOn ?? true;
  }

  static final _player = AudioPlayer();
  static Future<void> triggerVoiceForService() async {
    await Hive.initFlutter();
    if (!Hive.isAdapterRegistered(HiveConstants.CANTEEN_LOCAL_DETAILS_BOX)) {
      Hive.registerAdapter(CanteenLocalDetailsAdapter());
      await Hive.openBox<CanteenLocalDetails>(
          HiveConstants.CANTEEN_LOCAL_DETAILS_BOX_NAME);
    }

    audioHandler = await AudioService.init(
      builder: () => AudioPlayerHandler(),
      config: const AudioServiceConfig(
        androidNotificationChannelId: 'com.ryanheise.myapp.channel.audio',
        androidNotificationChannelName: 'Audio playback',
        androidNotificationOngoing: true,
      ),
    );
    await Firebase.initializeApp();
    final uid = Getters.getCurrentUserUid();
    final DocumentSnapshot userDoc =
        await FirebaseFirestore.instance.usersCollection.doc(uid).get();

    if (!userDoc.exists) {
      return;
    } else {
      CoolUser user = CoolUser.fromMap(userDoc.data()! as Map<String, dynamic>);
      if (user.canteenId?.isNotEmpty ?? false) {
        triggerVoice(canteenId: user.canteenId);
      }
    }
  }

  // static Future<void> _init() async {
  //   debugPrint("Playing new order sound...................");
  //   audioHandler.play();
  //   // try {
  //   //   await _player.setAsset('assets/sounds/new_order.mp3');
  //   //   if (!_player.playing) {
  //   //     await _player.play();
  //   //   }
  //   //   debugPrint(
  //   //       'Playing audio................................................');
  //   // } catch (e) {
  //   //   debugPrint(
  //   //       "Error loading audio source: $e....................................................");
  //   // }
  // }

}
