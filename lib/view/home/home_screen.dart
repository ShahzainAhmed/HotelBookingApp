import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hotel_booking_app/models/cards_model.dart';
import 'package:hotel_booking_app/view/detail_screen/detail_screen.dart';
import 'package:hotel_booking_app/view/home/widgets/custom_app_bar.dart';
import 'package:hotel_booking_app/view/home/widgets/custom_row.dart';
import 'package:hotel_booking_app/view/home/widgets/hotel_info_card.dart';
import 'package:hotel_booking_app/view/home/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 100.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            const CustomSearchBar(),
            SizedBox(height: 10.h),
            const CustomRow(title: "Nearby your location"),
            SizedBox(
              height: 260.h,
              child: ListView.separated(
                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(width: 20.w),
                itemCount: cardsList.length,
                itemBuilder: (context, index) {
                  return FadeInUp(
                    duration: const Duration(milliseconds: 1500),
                    child: HotelInfoCard(
                      cardsModel: cardsList[index],
                      onTap: () =>
                          Get.to(DetailScreen(cardsModel: cardsList[index])),
                    ),
                  );
                },
              ),
            ),
            const CustomRow(title: "Popular location"),
            SizedBox(
              height: 260.h,
              child: ListView.separated(
                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(width: 20.w),
                itemCount: 4,
                itemBuilder: (context, index) {
                  final reversedIndex = cardsList.length - 1 - index;
                  return FadeInUp(
                    duration: const Duration(milliseconds: 1700),
                    child: HotelInfoCard(
                      cardsModel: cardsList.reversed.toList()[index],
                      onTap: () => Get.to(DetailScreen(
                        cardsModel: cardsList[reversedIndex],
                      )),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
