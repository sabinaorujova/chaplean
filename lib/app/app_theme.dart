import 'package:flutter/material.dart';

import '../utils/constants/app_colors.dart';

class UITheme {
  static ThemeData appTheme = ThemeData(
    fontFamily: 'Poppins',
    useMaterial3: true,
    primarySwatch: AppColors.primarySwatch,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: AppColors.primaryColor,
    checkboxTheme: CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      side: const BorderSide(color: AppColors.royalty),
      fillColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          return AppColors.royalty;
        },
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.primaryColor,
      selectedItemColor: AppColors.etherealWhite,
      unselectedItemColor: AppColors.doverGrey,
      selectedLabelStyle: TextStyle(fontSize: 8),
      unselectedLabelStyle:
          TextStyle(fontSize: 8, color: AppColors.etherealWhite),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.royalty,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: AppColors.etherealWhite,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: AppColors.royalty,
      thickness: 0.5,
    ),
    tabBarTheme: const TabBarTheme(
      labelColor: AppColors.karimunBlue,
      unselectedLabelColor: AppColors.doverGrey,
      dividerColor: Colors.transparent,
      indicator: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: AppColors.karimunBlue),
        ),
      ),
    ),
    listTileTheme: const ListTileThemeData(
      titleTextStyle: TextStyle(
        fontFamily: "Poppins",
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      subtitleTextStyle: TextStyle(
        fontFamily: "Poppins",
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    ),
  );
}
