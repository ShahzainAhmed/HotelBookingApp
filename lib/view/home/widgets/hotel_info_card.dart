import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hotel_booking_app/models/cards_model.dart';
import 'package:hotel_booking_app/resources/colors/app_colors.dart';
import 'package:hotel_booking_app/resources/styles/app_typography.dart';
import 'package:like_button/like_button.dart';

class HotelInfoCard extends StatelessWidget {
  final VoidCallback onTap;
  final CardsModel cardsModel;
  const HotelInfoCard(
      {super.key, required this.cardsModel, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: 220.w,
              decoration: BoxDecoration(
                  color: AppColors.kWhiteColor,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [
                    BoxShadow(
                        color: const Color.fromARGB(255, 82, 78, 78)
                            .withOpacity(0.2),
                        blurRadius: 2,
                        offset: const Offset(1, 1))
                  ]),
              child: Column(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    height: 160.h,
                    width: Get.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.r),
                        topRight: Radius.circular(10.r),
                      ),
                      image: DecorationImage(
                        image: AssetImage(cardsModel.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 30.h,
                        width: 30.w,
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
                                size: 20.r,
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
                                    isLiked
                                        ? Icons.favorite
                                        : Icons.favorite_outline,
                                    color: isLiked
                                        ? AppColors.kRedColor
                                        : AppColors.kRedColor,
                                    size: 20.r,
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.r),
                      bottomRight: Radius.circular(10.r),
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                cardsModel.title,
                                style: AppTypography.kExtraBold12,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const Icon(Icons.star,
                                size: 18, color: AppColors.kYellowColor),
                            SizedBox(width: 5.w),
                            Text(cardsModel.rating,
                                style: AppTypography.kExtraBold12)
                          ],
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          cardsModel.subTitle,
                          style: AppTypography.kBold10.copyWith(
                            color: AppColors.kLightGreyColor,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: cardsModel.price,
                                style: AppTypography.kExtraBold12
                                    .copyWith(color: AppColors.kBlackColor),
                              ),
                              TextSpan(
                                text: ' /Day',
                                style: AppTypography.kBold10
                                    .copyWith(color: AppColors.kLightGreyColor),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
