import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wedzy_duo/Routes/route_name.dart';
import 'package:wedzy_duo/Utils/Widgets/common_appbar_dynamic.dart';
import 'package:wedzy_duo/Utils/Widgets/common_next_button.dart';
import '../../Utils/Common/sized_box.dart';
import '../../Utils/Common/texts.dart';
import '../../Utils/Common/themedata.dart';
import 'onboarding5.dart';

Map pageDataOnboarding = {
  'bride': ['Her', 'Bride', 'Guy', 'Groom'],
  'groom': ['His', 'Groom', 'Girl', 'Bride']
};

class Onboarding6 extends StatelessWidget {
  const Onboarding6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: commonNextButton('Next',
          margin: 16.w, onTap: () => Get.toNamed(RouteName.onboarding7)),
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
                        width: 15.w.w,
                        height: 6.h,
                        decoration: ShapeDecoration(
                          color: AppColors.buttoncolour,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3)),
                        ),
                      ),
                      Container(
                        width: 165 + 150.w,
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
                    left: 16.w,
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
            textblack_25w700center(
                'Let’s put a name of special person planning'),
            textEE3764_30_700(
                '${pageDataOnboarding[globalBrideBool.value ? 'bride' : 'groom'][0]} Wedding'),
            sizedBoxHeight(25.h),
            text707070_16w400(
                'Enter Name Of The ${pageDataOnboarding[globalBrideBool.value ? 'bride' : 'groom'][1]}'),
            sizedBoxHeight(60.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: TextFormField(
                cursorColor: AppColors.buttoncolour,
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.buttoncolour),
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.buttoncolour))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
