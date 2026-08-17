import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_booking_app/models/cards_model.dart';
import 'package:hotel_booking_app/resources/colors/app_colors.dart';
import 'package:hotel_booking_app/resources/styles/app_typography.dart';

class HotelFeaturesRow extends StatelessWidget {
  final CardsModel cardsModel;
  const HotelFeaturesRow({super.key, required this.cardsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.kWhiteColor,
        border: Border.all(color: AppColors.kVeryLighGreyColor),
        boxShadow: [
          BoxShadow(
            color: AppColors.kLightGreyColor.withOpacity(0.1),
            blurRadius: 1,
            offset: const Offset(1, 1),
          ),
        ],
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // WiFi
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.wifi, size: 18.r),
                SizedBox(width: 6.w),
                Text(
                  'Free WiFi',
                  style: AppTypography.kBold10,
                ),
              ],
            ),

            VerticalDivider(
              thickness: 1,
              color: AppColors.kLightGreyColor.withOpacity(0.2),
            ),

            // Breakfast
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.coffee_outlined, size: 18.r),
                SizedBox(width: 6.w),
                Text(
                  'Free Breakfast',
                  style: AppTypography.kBold10,
                ),
              ],
            ),

            VerticalDivider(
              thickness: 1,
              color: AppColors.kLightGreyColor.withOpacity(0.2),
            ),

            // Rating
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.star,
                  color: AppColors.kYellowColor,
                  size: 18.r,
                ),
                SizedBox(width: 6.w),
                Text(
                  cardsModel.rating,
                  style: AppTypography.kBold10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
