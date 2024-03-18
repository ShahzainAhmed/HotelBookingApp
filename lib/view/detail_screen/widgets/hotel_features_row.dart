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
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.r),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.wifi, size: 20.r),
          Text('Free WiFi', style: AppTypography.kBold12),
          Icon(Icons.coffee_outlined, size: 20.r),
          Text('Free Breakfast', style: AppTypography.kBold12),
          Icon(Icons.star, color: AppColors.kYellowColor, size: 20.r),
          Text(cardsModel.rating, style: AppTypography.kBold12),
        ],
      ),
    );
  }
}
