import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wedzy_duo/Routes/route_name.dart';
import '../../Utils/Common/sized_box.dart';
import '../../Utils/Common/texts.dart';
import '../../Utils/Common/themedata.dart';
import '../../Utils/Widgets/common_appbar_dynamic.dart';
import '../../Utils/Widgets/common_next_button.dart';
import 'onboarding5.dart';

class Onboarding11 extends StatelessWidget {
  const Onboarding11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: commonNextButton('Next', margin: 16.w,onTap: () => Get.toNamed(RouteName.onboarding12),),
      appBar: const CustomAppBarDynamic(
          titleTxt: '', preferredSize: Size.fromHeight(50)),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/png/onboarding5.png'))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 70.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 145.w,
                        height: 6.h,
                        decoration: ShapeDecoration(
                          color: AppColors.buttoncolour,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3)),
                        ),
                      ),
                      Container(
                        width: 185.w,
                        height: 6.h,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFFB3D7),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3)),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 5.h,
                    left: 145.w,
                    child: SvgPicture.asset(globalBrideBool.value
                        ? 'assets/svg/bride.svg'
                        : 'assets/svg/groom1.svg'),
                  ),
                  Positioned(
                    top: 5.h,
                    right: 12.w,
                    child: SvgPicture.asset(globalBrideBool.value
                        ? 'assets/svg/groom.svg'
                        : 'assets/svg/bride1.svg'),
                  )
                ],
              ),
            ),
            sizedBoxHeight(70.h),
            textblack_25w700center("What Is Your Dream\nWedding Budget?"),
            sizedBoxHeight(70.h),
            Container(
              color: AppColors.buttoncolour,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset('assets/svg/borderDate.svg'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      sizedBoxWidth(60.w),
                      CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 24.r,
                          child: SvgPicture.asset('assets/svg/money.svg')),
                      sizedBoxWidth(10.w),
                      SizedBox(
                        width: 150.w,
                        child: TextFormField(
                            style: TextStyle(
                                color: AppColors.white, fontSize: 25.h),
                            decoration: InputDecoration(
                              hintText: 'Enter Amount',
                              hintStyle: TextStyle(color: Colors.grey[300]),
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.number,
                            autofocus: true),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
