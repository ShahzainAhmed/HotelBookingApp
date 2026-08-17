import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotel_booking_app/resources/colors/app_colors.dart';

class AppThemes {
  AppThemes._();

  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.kWhiteColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,

          // Android
          statusBarIconBrightness: Brightness.dark,

          // iOS
          statusBarBrightness: Brightness.light,
        ),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        elevation: 0.0,
        backgroundColor: AppColors.kTransparentColor,
      ),
    );
  }
}
