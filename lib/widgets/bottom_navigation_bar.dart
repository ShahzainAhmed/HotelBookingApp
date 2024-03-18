import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_booking_app/resources/colors/app_colors.dart';
import 'package:hotel_booking_app/view/home/home_screen.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  List<Widget> pages = [
    const HomeScreen(), // index 0
    const HomeScreen(), // index 1
    const HomeScreen(), // index 2
    const HomeScreen(), // index 3
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: 75.h,
        child: FloatingNavbar(
          selectedBackgroundColor: Colors.transparent,
          iconSize: 20.sp,
          backgroundColor: AppColors.kVeryLighGreyColor,
          borderRadius: 80.r,
          selectedItemColor: AppColors.kPrimaryColor,
          unselectedItemColor: AppColors.kLightGreyColor,
          items: [
            FloatingNavbarItem(icon: Icons.home_filled),
            FloatingNavbarItem(icon: Icons.calendar_today_outlined),
            FloatingNavbarItem(icon: Icons.favorite_outline),
            FloatingNavbarItem(icon: Icons.person_outline),
          ],
          currentIndex: _currentIndex,
          onTap: (int val) => setState(() => _currentIndex = val),
        ),
      ),
    );
  }
}
