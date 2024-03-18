import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_booking_app/resources/assets/image_assets.dart';
import 'package:hotel_booking_app/resources/colors/app_colors.dart';
import 'package:hotel_booking_app/resources/styles/app_typography.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      surfaceTintColor: Colors.transparent,
      title: Row(
        children: [
          Column(
            children: [
              Container(
                height: 40.h,
                width: 40.w,
                decoration: BoxDecoration(
                  color: AppColors.kWhiteColor,
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.kVeryLighGreyColor),
                ),
                child: Image.asset(ImageAssets.kProfile),
              ),
            ],
          ),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Current location",
                style: AppTypography.kBold10.copyWith(
                  color: AppColors.kLightGreyColor,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.pin_drop,
                    color: AppColors.kPrimaryColor,
                    size: 18.r,
                  ),
                  SizedBox(
                    height: 15.h,
                    child: DropdownButton<String>(
                      iconSize: 20.r,
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      underline: const SizedBox(),
                      style: AppTypography.kBold12
                          .copyWith(color: AppColors.kBlackColor),
                      value: 'Karachi, Pakistan',
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                        color: AppColors.kBlackColor,
                      ),
                      onChanged: (String? newValue) {},
                      items: <String>[
                        'Karachi, Pakistan',
                        'Lahore, Pakistan',
                        'Hyderabad, Pakistan',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: Container(
            height: 40.h,
            width: 40.w,
            decoration: BoxDecoration(
              color: AppColors.kWhiteColor,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.kVeryLighGreyColor),
            ),
            child:
                const Icon(Icons.notifications, color: AppColors.kBlackColor),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
