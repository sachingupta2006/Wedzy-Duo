import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wedzy_duo/Routes/route_name.dart';
import 'package:wedzy_duo/Utils/Common/sized_box.dart';
import 'package:wedzy_duo/Utils/Common/texts.dart';
import 'package:wedzy_duo/Utils/Widgets/common_next_button.dart';
import 'onboarding5.dart';

class Onboarding12 extends StatelessWidget {
  const Onboarding12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: commonNextButton("Let's Begin",
          margin: 16.w, onTap: () => Get.toNamed(RouteName.onboarding13)),
      body: SafeArea(
          child: Container(
        color: const Color(0xFFEF2B7B),
        child: Stack(
          children: [
            Positioned(
                top: 5.h,
                child: SvgPicture.asset('assets/svg/greatBack.svg',
                    fit: BoxFit.fitWidth)),
            Positioned(
                top: 130.h,
                left: 0,
                right: 0,
                child: Image.asset('assets/png/onboarding5.png')),
            GestureDetector(
              onTap: () => Get.back(),
              child: Container(
                margin: EdgeInsets.only(left: 16.w, top: 8.h),
                height: 35.h,
                width: 35.h,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFEF3F8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: const Icon(
                  Icons.arrow_back,
                  color: Color(0xFFEF2B7B),
                ),
              ),
            ),
            Column(
              children: [
                sizedBoxHeight(140.h),
                textEE3764_30_700('Great!!!'),
                sizedBoxHeight(10.h),
                textEE3764_18w400('Your Dream Wedding Your Way!!'),
                sizedBoxHeight(20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: textBlack_16_400center(
                      'Let’s get ready for an extra-ordinary wedding experience that celebrates love, culture & unforgettable moments'),
                ),
                const Spacer(),
                SizedBox(
                  // color: AppColors.buttoncolour,
                  height: 270.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                          top: 25.h,
                          child: SvgPicture.asset('assets/svg/tajMahel.svg',
                              height: 170.h)),
                      Positioned(
                          left: 0.w,
                          right: 80.w,
                          child: SvgPicture.asset(
                              globalBrideBool.value
                                  ? 'assets/svg/bride.svg'
                                  : 'assets/svg/groom1.svg',
                              height: 218.h)),
                      Positioned(
                        right: 0,
                        left: 80.w,
                        child: SvgPicture.asset(
                            globalBrideBool.value
                                ? 'assets/svg/groom.svg'
                                : 'assets/svg/bride1.svg',
                            height: 218.h),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 30.w,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset('assets/svg/greatFlower.svg',
                                height: 225.h),
                            SvgPicture.asset('assets/svg/greatFlower2.svg',
                                height: 95.h),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
