part of core;

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
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
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
