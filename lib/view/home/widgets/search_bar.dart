import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_booking_app/resources/colors/app_colors.dart';
import 'package:hotel_booking_app/resources/styles/app_typography.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SizedBox(
        height: 40.h,
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
            prefixIcon: const Icon(CupertinoIcons.search,
                color: AppColors.kLightGreyColor),
            suffixIcon: const Icon(Icons.menu, color: AppColors.kPrimaryColor),
            hintText: "Search Hotels ...",
            hintStyle: AppTypography.kMedium12
                .copyWith(color: AppColors.kLightGreyColor),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14.r),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14.r),
              borderSide: BorderSide(
                color: AppColors.kBlackColor.withValues(alpha: 0.1),
              ), // Change idle border color here
            ),
          ),
        ),
      ),
    );
  }
}
