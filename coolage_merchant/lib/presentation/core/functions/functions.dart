import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:coolage_merchant/domain/core/helpers/enum.dart';
import 'package:coolage_merchant/domain/core/helpers/getter.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

mixin Functions {
  static String getDate(DateTime dateTime) {
    DateTime date = dateTime;
    int day = date.day;
    int month = date.month;
    int year = date.year;
    String monthStr = '';
    monthStr = getMonthName(month);
    return '$day $monthStr $year';
  }

  static String getMonthYearStr() {
    DateTime date = DateTime.now();
    int month = date.month;
    int year = date.year;
    String monthStr = getMonthName(month);

    return '$monthStr $year';
  }

  static String getMonthName(int month) {
    String monthStr = '';
    if (month == 1) {
      monthStr = "January";
    } else if (month == 2) {
      monthStr = "February";
    } else if (month == 3) {
      monthStr = "March";
    } else if (month == 4) {
      monthStr = "April";
    } else if (month == 5) {
      monthStr = "May";
    } else if (month == 6) {
      monthStr = "June";
    } else if (month == 7) {
      monthStr = "July";
    } else if (month == 8) {
      monthStr = "August";
    } else if (month == 9) {
      monthStr = "September";
    } else if (month == 10) {
      monthStr = "October";
    } else if (month == 11) {
      monthStr = "November";
    } else if (month == 12) {
      monthStr = "December";
    }
    return monthStr;
  }

  static Timestamp convertTimeOfDayToTimestamp(TimeOfDay? timeOfDay) {
    return Timestamp.fromDate(
        DateTime(2021, 01, 01, timeOfDay?.hour ?? 0, timeOfDay?.minute ?? 0));
  }

  static TimeOfDay convertTimestampToTimeOfDay(Timestamp? timestamp) {
    DateTime dt = timestamp?.toDate() ?? DateTime(2021, 01, 01, 0, 0);
    return TimeOfDay(hour: dt.hour, minute: dt.minute);
  }

  // ignore: avoid_void_async
  static void launchURL(String? url) async {
    if (url != null) {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        Fluttertoast.showToast(msg: 'Sorry, we could not found a valid url!');
        throw 'Could not launch $url';
      }
    } else {
      Fluttertoast.showToast(
          msg: "Sorry, there is not url available currently!");
    }
  }

  static String getSenderUid(String docId) {
    String s =
        docId.replaceAll(Getters.getCurrentUserUid(), '').replaceAll('_', '');
    print(s);
    return s;
  }

  static String getChatRoomId(String a, String b) {
    if (a.compareTo(b) > 0) {
      return "$b\_$a";
    } else {
      return "$a\_$b";
    }
  }

  static String getChatDocument(String? docId, String? senderId) {
    return getChatRoomId(Getters.getCurrentUserUid(), senderId!);
  }

  static String getStandard12HourTime(Timestamp timestamp) {
    final DateTime startDate = timestamp.toDate();
    return DateFormat("h:mm a").format(startDate);
  }

  static String getDateAndTime(Timestamp timestamp) {
    final DateTime startDate = timestamp.toDate();
    return DateFormat("h:mm a M/d/y").format(startDate);
  }
}
