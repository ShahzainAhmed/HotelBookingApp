import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hotel_booking_app/resources/colors/app_colors.dart';
import 'package:hotel_booking_app/resources/theme/app_themes.dart';
import 'package:hotel_booking_app/view/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Hotel Booking App',
          theme: AppThemes.lightTheme,
          home: const HomeScreen(),
        );
      },
    );
  }
}
