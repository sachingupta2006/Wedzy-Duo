import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wedzy_duo/Routes/route_name.dart';
import 'package:wedzy_duo/Utils/Common/sized_box.dart';
import 'package:wedzy_duo/Utils/Common/texts.dart';
import 'package:wedzy_duo/Utils/Widgets/common_next_button.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFAFC),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    sizedBoxHeight(20.h),
                    Image.asset('assets/png/1.png', height: 128.h),
                    sizedBoxHeight(5.h),
                    Image.asset('assets/png/2.png', height: 128.h),
                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/png/3.png', height: 76.h),
                    sizedBoxHeight(5.h),
                    Image.asset('assets/png/4.png', height: 128.h),
                    sizedBoxHeight(5.h),
                    Image.asset('assets/png/5.png', height: 128.h),
                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/png/6.png', height: 75.h),
                    sizedBoxHeight(30.h),
                    SvgPicture.asset('assets/svg/lodingDark.svg'),
                    sizedBoxHeight(30.h),
                    Image.asset('assets/png/7.png', height: 128.h),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset('assets/png/8.png', height: 100.h),
                    sizedBoxHeight(5.h),
                    Image.asset('assets/png/9.png', height: 128.h),
                    sizedBoxHeight(5.h),
                    Image.asset('assets/png/10.png', height: 128.h),
                  ],
                ),
              ],
            ),
            SizedBox(height: 6.h),
            SvgPicture.asset('assets/svg/splshLogo.svg', width: 80.w),
            SizedBox(height: 5.h),
            Image.asset('assets/png/wedzy.png', width: 80.w),
            SizedBox(height: 20.h),
            textBlack_30_700Center('Hey!\nLet’s plan a dream wedding for you'),
            sizedBoxHeight(30.h),
            commonNextButton(
              'Get Started',
              margin: 16.w,
              onTap: () => Get.toNamed(RouteName.onboarding3),
            ),
            sizedBoxHeight(16.h),
            GestureDetector(
                onTap: () {
                  Get.toNamed(RouteName.loginscreen);
                },
                child: textEF2B7B_15_500('I already have an account, Login'))
          ],
        ),
      ),
    );
  }
}
