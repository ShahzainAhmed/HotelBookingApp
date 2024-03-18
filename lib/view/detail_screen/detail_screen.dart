import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hotel_booking_app/models/cards_model.dart';
import 'package:hotel_booking_app/resources/colors/app_colors.dart';
import 'package:hotel_booking_app/resources/styles/app_typography.dart';
import 'package:hotel_booking_app/view/detail_screen/widgets/hotel_features_row.dart';
import 'package:hotel_booking_app/view/detail_screen/widgets/hotel_image.dart';
import 'package:hotel_booking_app/view/detail_screen/widgets/hotel_preview_row.dart';
import 'package:hotel_booking_app/view/detail_screen/widgets/primary_button.dart';

class DetailScreen extends StatefulWidget {
  final CardsModel cardsModel;
  const DetailScreen({super.key, required this.cardsModel});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool animate = true;
  late AnimationController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        centerTitle: true,
        title: Text('Detail', style: AppTypography.kExtraBold16),
        leading: IconButton(
          iconSize: 20.r,
          onPressed: () async {
            setState(() {
              animate = !animate;
            });
            await Future.delayed(const Duration(milliseconds: 800));
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: const Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding:
            EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h, bottom: 120.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeInUp(
              animate: animate,
              controller: (controller) => controller = controller,
              delay: const Duration(milliseconds: 300),
              child: HotelImage(cardsModel: widget.cardsModel),
            ),
            SizedBox(height: 10.h),
            FadeInUp(
              animate: animate,
              delay: const Duration(milliseconds: 400),
              child: HotelFeaturesRow(cardsModel: widget.cardsModel),
            ),
            SizedBox(height: 15.h),
            FadeInUp(
              animate: animate,
              delay: const Duration(milliseconds: 500),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.cardsModel.title,
                      style: AppTypography.kExtraBold14),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: widget.cardsModel.price,
                          style: AppTypography.kExtraBold14
                              .copyWith(color: AppColors.kBlackColor),
                        ),
                        TextSpan(
                          text: ' /Day',
                          style: AppTypography.kMedium12
                              .copyWith(color: AppColors.kLightGreyColor),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 5.h),
            FadeInUp(
              animate: animate,
              delay: const Duration(milliseconds: 600),
              child: Row(
                children: [
                  Icon(Icons.pin_drop,
                      color: AppColors.kPrimaryColor, size: 18.r),
                  SizedBox(width: 10.w),
                  Text(
                    widget.cardsModel.subTitle,
                    style: AppTypography.kBold10
                        .copyWith(color: AppColors.kLightGreyColor),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            FadeInUp(
              animate: animate,
              delay: const Duration(milliseconds: 700),
              child: Text(
                'Description',
                style: AppTypography.kExtraBold12,
              ),
            ),
            SizedBox(height: 5.h),
            FadeInUp(
              animate: animate,
              delay: const Duration(milliseconds: 800),
              child: Padding(
                padding: EdgeInsets.only(right: 25.w),
                child: Text(
                  widget.cardsModel.description,
                  style: AppTypography.kBold10
                      .copyWith(color: AppColors.kLightGreyColor),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            FadeInUp(
              animate: animate,
              delay: const Duration(milliseconds: 900),
              child: Text('Preview', style: AppTypography.kExtraBold12),
            ),
            SizedBox(height: 10.h),
            FadeInUp(
              animate: animate,
              delay: const Duration(milliseconds: 1000),
              child: const HotelPreviewRow(),
            ),
          ],
        ),
      ),
      bottomSheet: FadeInUp(
        animate: animate,
        delay: const Duration(milliseconds: 1100),
        child: const PrimaryButton(),
      ),
    );
  }
}
