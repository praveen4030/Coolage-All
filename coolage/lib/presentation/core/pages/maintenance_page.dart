import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage/presentation/base/base.dart';

import 'package:core/core.dart';

import 'package:flutter/material.dart';

class MaintenancePage extends StatefulWidget {
  final Timestamp? timestamp;
  const MaintenancePage({
    Key? key,
    @required this.timestamp,
  }) : super(key: key);

  @override
  _MaintenancePageState createState() => _MaintenancePageState();
}

class _MaintenancePageState extends State<MaintenancePage> {
  String timeStr = "";

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      getTimeString();
    });
  }

  void getTimeString() {
    final Duration durationDiff =
        widget.timestamp!.toDate().difference(DateTime.now());
    if (durationDiff.isNegative) {
      while (Navigator.of(context).canPop()) {
        Navigator.of(context).pop();
      }
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const BasePage()));
      return;
    }
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    final twoDigitMinutes = twoDigits(durationDiff.inMinutes.remainder(60));
    final twoDigitSeconds = twoDigits(durationDiff.inSeconds.remainder(60));
    setState(() {
      timeStr =
          "${twoDigits(durationDiff.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            const SizedBox(
              height: 110,
            ),
            Image.asset(
              'assets/images/maintenance.png',
              width: MediaQuery.of(context).size.width,
              height: 380,
            ),
            const CustomText(
              text: "Hang On !",
              fontSize: 36,
              color: Kolors.primaryColor1,
            ),
            const SizedBox(
              height: 24,
            ),
            const CustomText(
              text: "We are under maintenance",
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomText(
              text: "Coolage will be live again in ",
              color: Kolors.greyBlue,
              fontSize: 18,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomText(
              text: timeStr,
              color: Kolors.greyBlue,
              fontSize: 36,
            ),
          ],
        ),
      ),
    );
  }
}
