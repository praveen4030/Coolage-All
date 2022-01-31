import 'dart:async';

import 'package:audio_session/audio_session.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage_merchant/domain/core/helpers/getter.dart';
import 'package:coolage_merchant/domain/user/cool_user.dart';
import 'package:coolage_merchant/infrastructure/core/firebase_helpers.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';
// import 'package:flutter_sound/public/flutter_sound_player.dart';
import 'package:just_audio/just_audio.dart';

mixin TriggerVoiceForWeb {
  static bool isRunningRecurring = false;
  static Timer? timer;

  static Future<void> triggerVoice(
      {BuildContext? context, String? canteenId}) async {
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration.speech());
    _player.playbackEventStream.listen((event) {},
        onError: (Object e, StackTrace stackTrace) {
      debugPrint('A stream error occurred: $e');
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
        _init();
        timer = Timer.periodic(const Duration(seconds: 10), (timer) async {
          _init();
          Fluttertoast.showToast(msg: "New order received");
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
      await _player.pause();
      await _player.dispose();
    }
  }

  static final _player = AudioPlayer();
  static Future<void> triggerVoiceForService() async {
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

  static Future<void> _init() async {
    debugPrint("Playing new order sound...................");
    try {
      await _player.setAsset('assets/sounds/new_order.mp3');
      if (!_player.playing) {
        await _player.play();
      }
      debugPrint(
          'Playing audio................................................');
    } catch (e) {
      debugPrint(
          "Error loading audio source: $e....................................................");
    }
  }
}
