import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hotel_booking_app/resources/assets/image_assets.dart';
import 'package:hotel_booking_app/resources/colors/app_colors.dart';

class HotelPreviewRow extends StatelessWidget {
  const HotelPreviewRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: AppColors.kVeryLighGreyColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (final imagePath in [
            ImageAssets.kPic4,
            ImageAssets.kPic5,
            ImageAssets.kPic6,
          ])
            Container(
              height: 70.h,
              width: 95.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
