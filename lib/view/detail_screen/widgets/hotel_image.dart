import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hotel_booking_app/models/cards_model.dart';
import 'package:hotel_booking_app/resources/colors/app_colors.dart';
import 'package:like_button/like_button.dart';

class HotelImage extends StatelessWidget {
  final CardsModel cardsModel;
  const HotelImage({super.key, required this.cardsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      height: 230.h,
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.kLightGreyColor.withOpacity(0.2),
            blurRadius: 2,
            offset: const Offset(1, 2),
          ),
        ],
        image: DecorationImage(
            image: AssetImage(cardsModel.image), fit: BoxFit.cover),
      ),
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          height: 40.h,
          width: 40.w,
          decoration: const BoxDecoration(
            color: AppColors.kWhiteColor,
            shape: BoxShape.circle,
          ),
          child: Stack(
            children: [
              Positioned.fill(
                left: 2.1,
                right: 0,
                child: LikeButton(
                  size: 30.r,
                  circleColor: const CircleColor(
                    start: AppColors.kRedColor,
                    end: AppColors.kRedColor,
                  ),
                  bubblesColor: const BubblesColor(
                    dotPrimaryColor: AppColors.kRedColor,
                    dotSecondaryColor: AppColors.kRedColor,
                  ),
                  likeBuilder: (bool isLiked) {
                    return Icon(
                      isLiked ? Icons.favorite : Icons.favorite_outline,
                      color:
                          isLiked ? AppColors.kRedColor : AppColors.kRedColor,
                      size: 22.r,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
