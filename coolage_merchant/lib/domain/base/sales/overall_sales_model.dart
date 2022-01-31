import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class OverallSalesModel {
  int? todaysSale;
  int? todayOrderCount;
  int? weeklySale;
  int? weeklyOrderCount;
  int? monthlySale;
  int? monthlyOrderCount;
  OverallSalesModel({
    this.todaysSale,
    this.todayOrderCount,
    this.weeklySale,
    this.weeklyOrderCount,
    this.monthlySale,
    this.monthlyOrderCount,
  });

  Map<String, dynamic> toMap() {
    return {
      'todaysSale': todaysSale ?? 0,
      'todayOrderCount': todayOrderCount ?? 0,
      'weeklySale': weeklySale ?? 0,
      'weeklyOrderCount': weeklyOrderCount ?? 0,
      'monthlySale': monthlySale,
      'monthlyOrderCount': monthlyOrderCount ?? 0,
    };
  }

  factory OverallSalesModel.fromMap(Map<String, dynamic> map) {
    DateTime dateTime = DateTime.now();
    int month = dateTime.month;
    int day = dateTime.day;

    final todaysMap = getThisDayMap(month, day, map);
    final todaysCount = todaysMap['count'] ?? 0;
    final todaysSale = todaysMap['sale'] ?? 0;

    final monthlyMap = getMonthlySale(map);
    final monthlyCount = monthlyMap['count'] as int;
    final monthlySale = monthlyMap['sale'] as int;

    final weeklyMap = getLast7DaysSale(map);
    final weeklyCount = weeklyMap['count'] as int;
    final weeklySale = weeklyMap['sale'] as int;
    return OverallSalesModel(
      todaysSale: todaysSale,
      todayOrderCount: todaysCount,
      weeklySale: weeklySale,
      weeklyOrderCount: weeklyCount,
      monthlySale: monthlySale,
      monthlyOrderCount: monthlyCount,
    );
  }

  static Map<String, dynamic> getMonthlySale(Map<String, dynamic> map) {
    DateTime currentDate = DateTime.now();
    int month = currentDate.month;
    int sale = 0;
    int count = 0;
    for (int i = 1; i <= 31; i++) {
      final thisMap = getThisDayMap(month, i, map);
      sale += thisMap['sale'] ?? 0;
      count += thisMap['count'] ?? 0;
    }
    return {
      'sale': sale,
      'count': count,
    };
  }

  static Map<String, dynamic> getLast7DaysSale(Map<String, dynamic> map) {
    DateTime currentDate = DateTime.now();
    int sale = 0;
    int count = 0;
    for (int i = 0; i < 7; i++) {
      DateTime date = currentDate.subtract(Duration(days: i));
      int month = date.month;
      int day = date.day;
      final thisMap = getThisDayMap(month, day, map);
      sale += thisMap['sale'] ?? 0;
      count += thisMap['count'] ?? 0;
    }
    return {
      'sale': sale,
      'count': count,
    };
  }

  static Map<String, int> getThisDayMap(
      int month, int day, Map<String, dynamic> map) {
    int sale = 0;
    int count = 0;
    if (map.containsKey(month.toString())) {
      final monthMap = map[month.toString()] as Map<String, dynamic>;
      if (monthMap.containsKey(day.toString())) {
        final todaysMap = monthMap[day.toString()] as Map<String, dynamic>;
        sale = todaysMap['sale'] != null
            ? (double.parse(todaysMap['sale']?.toString() ?? '0')).toInt()
            : 0;
        count = todaysMap['count'] != null
            ? (double.parse(todaysMap['count']?.toString() ?? '0')).toInt()
            : 0;
      }
    }
    return {
      'sale': sale,
      'count': count,
    };
  }
}
