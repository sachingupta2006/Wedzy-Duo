import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wedzy_duo/Utils/Common/sized_box.dart';
import 'package:wedzy_duo/Utils/Common/texts.dart';
import 'package:wedzy_duo/Utils/Common/themedata.dart';
import 'package:wedzy_duo/Utils/Widgets/common_appbar_dynamic.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBarDynamic(
          titleTxt: "Notifications", preferredSize: Size.fromHeight(50)),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textBlack_14_600("Today"),
            sizedBoxHeight(15.h),
            normal(),
            sizedBoxHeight(24.h),
            wedzy(),
            sizedBoxHeight(28.h),
            textBlack_14_600("Yesterday"),
            sizedBoxHeight(15.h),
            normal1(),
            sizedBoxHeight(24.h),
            wedzy(),
            sizedBoxHeight(28.h),
            textBlack_14_600("24 Apr 2023"),
            sizedBoxHeight(15.h),
            normal1(),
            sizedBoxHeight(24.h),
            wedzy(),
          ],
        ),
      )),
    );
  }

  Widget normal() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          "assets/png/notification1.png",
          // width: 75,
        ),
        //sizedBoxWidth(8.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textBlack_14_400("Chaitali Tatkare"),
            textBlack12w400("Lorem ipsum dolor sit amet cons......"),
          ],
        ),
        // sizedBoxWidth(16.w),
        Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: textBlack12w400("10.38 AM"),
        )
      ],
    );
  }

  Widget wedzy() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(children: [
          CircleAvatar(
            radius: 27.h,
            backgroundColor: AppColors.greyF1F1F1,
            child: CircleAvatar(
              radius: 25.5.h,
              backgroundColor: AppColors.white,
              child: SvgPicture.asset("assets/svg/notification2.svg"),
            ),
          ),
          Positioned(
              top: 42,
              right: 37,
              bottom: 0,
              left: 0,
              child: CircleAvatar(
                radius: 10.h,
                backgroundColor: Color(0xffF05E90),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check,
                      size: 10,
                      color: AppColors.white,
                    ),
                  ],
                ),
              ))
        ]),
        sizedBoxWidth(12.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textBlack_14_400("Admin"),
            Text(
              'Lorem ipsum dolor sit amet cons......',
              style: TextStyle(
                color: Color(0xFF777777),
                fontSize: 12.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
        sizedBoxWidth(16.w),
        Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: textBlack12w400("6.38 AM"),
        )
      ],
    );
  }

  Widget normal1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("assets/png/notification1.png"),
        // sizedBoxWidth(8.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textBlack_14_400("Chaitali Tatkare"),
            Text(
              'Lorem ipsum dolor sit amet cons......',
              style: TextStyle(
                color: Color(0xFF777777),
                fontSize: 12.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
        // sizedBoxWidth(16.w),
        Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: textBlack12w400("10.38 AM"),
        )
      ],
    );
  }
}
