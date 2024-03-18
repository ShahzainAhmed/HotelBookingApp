import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hotel_booking_app/resources/colors/app_colors.dart';
import 'package:hotel_booking_app/resources/styles/app_typography.dart';
import 'package:bounce/bounce.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
      child: Bounce(
        child: Container(
          height: 50.h,
          width: Get.width,
          decoration: BoxDecoration(
            color: AppColors.kPrimaryColor,
            borderRadius: BorderRadius.circular(50.r),
          ),
          child: Center(
            child: Text(
              "Book Now",
              style: AppTypography.kMedium12
                  .copyWith(color: AppColors.kWhiteColor.withOpacity(0.8)),
            ),
          ),
        ),
      ),
    );
  }
}