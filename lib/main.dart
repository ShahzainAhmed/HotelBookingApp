import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hotel_booking_app/resources/colors/app_colors.dart';
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
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.kWhiteColor,
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.transparent,
              elevation: 0,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                // Android status bar icons
                statusBarIconBrightness: Brightness.dark,
                // iOS status bar icons/time
                statusBarBrightness: Brightness.light,
              ),
            ),
            bottomSheetTheme: const BottomSheetThemeData(
              elevation: 0.0,
              backgroundColor: AppColors.kTransparentColor,
            ),
          ),
          home: const HomeScreen(),
        );
      },
    );
    ;
  }
}
