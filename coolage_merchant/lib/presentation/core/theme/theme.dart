import 'package:flutter/material.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';

import 'colors.dart';

enum AppTheme {
  light,
  dark,
}

final appThemeData = {
  AppTheme.light: ThemeData(
    primaryColor: Kolors.primaryColor1,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      iconTheme: IconThemeData(
        color: Kolors.greyBlack,
        size: 24,
      ),
      titleTextStyle: TextStyle(
        color: Kolors.greyBlack,
        fontFamily: Fonts.EPILOGUE,
        fontSize: 18,
      ),
      actionsIconTheme: IconThemeData(
        color: Kolors.greyBlack,
        size: 24,
      ),
      centerTitle: true,
      elevation: 0,
    ),
    fontFamily: Fonts.POPPINS,
    iconTheme: const IconThemeData(
      color: Kolors.greyBlack,
      size: 24,
    ),
    scaffoldBackgroundColor: Colors.white,
    dialogTheme: const DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      unselectedItemColor: Kolors.greyBlue,
      selectedItemColor: Kolors.primaryColor1,
      selectedIconTheme: IconThemeData(
        color: Kolors.primaryColor1,
      ),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
    ),
  ),
};
