import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_booking_app/resources/colors/app_colors.dart';
import 'package:hotel_booking_app/resources/styles/app_typography.dart';

class CustomRow extends StatelessWidget {
  final String title;
  const CustomRow({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AnimatedTextKit(
            isRepeatingAnimation: false,
            animatedTexts: [
              WavyAnimatedText(
                title,
                textStyle: AppTypography.kExtraBold14
                    .copyWith(letterSpacing: 0.0, color: AppColors.kBlackColor),
                speed: const Duration(milliseconds: 150),
              ),
            ],
          ),
          Text("See all",
              style: AppTypography.kBold12
                  .copyWith(color: AppColors.kPrimaryColor)),
        ],
      ),
    );
  }
}
