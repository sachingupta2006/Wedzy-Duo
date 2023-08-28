import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wedzy_duo/Routes/route_name.dart';
import 'package:wedzy_duo/Utils/Common/sized_box.dart';
import 'package:wedzy_duo/Utils/Common/texts.dart';
import 'package:wedzy_duo/Utils/Common/themedata.dart';
import 'package:wedzy_duo/Utils/Widgets/common_appbar_dynamic.dart';
import 'package:wedzy_duo/Utils/Widgets/common_next_button.dart';

import 'onboarding5.dart';

class Onboarding14 extends StatelessWidget {
  const Onboarding14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBarDynamic(
        titleTxt: '',
        preferredSize: const Size.fromHeight(50),
        suffixWidget: TextButton(
            onPressed: () {
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) => superbDialog());
            },
            child: textEF2B2B_15w400('Skip')),
      ),
      bottomNavigationBar: commonNextButton('Next', margin: 16.w, onTap: () {
        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) => superbDialog());
      }),
      body: Column(
        children: [
          sizedBoxHeight(20.h),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: textBlack18w700Center(
                  "Now Let's Select What Other Services Are You Intrested In")),
          sizedBoxHeight(50.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  logoWidget(0),
                  logoWidget(1),
                  logoWidget(2),
                ],
              ),
              Column(
                children: [
                  logoWidget(3),
                  logoWidget(4),
                  logoWidget(5),
                  logoWidget(6),
                ],
              ),
              Column(
                children: [
                  logoWidget(7),
                  logoWidget(8),
                  logoWidget(9),
                ],
              ),
              Column(
                children: [
                  logoWidget(10),
                  logoWidget(11),
                  logoWidget(12),
                  sizedBoxHeight(110.h)
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget logoWidget(index) {
    List pngLogo = [
      "assets/png/cateringLogo.png",
      "assets/png/TalentsLogo.png",
      "assets/png/photographyLogo.png",
      "assets/png/jewelryLohgo.png",
      "assets/png/makeUpLogo.png",
      "assets/png/DJLogo.png",
      "assets/png/cakesLogo.png",
      "assets/png/VenueLogo.png",
      "assets/png/WeddingLogo.png",
      "assets/png/mehendiLogo.png",
      "assets/png/bartenderLogo.png",
      "assets/png/decorationLogo.png",
      "assets/png/choreoLogo.png",
    ];
    List nameLogo = [
      'Catering',
      'Talents',
      'Photography',
      'Jewelery',
      'Make-Up',
      'DJ',
      'Cakes',
      'Venue',
      'Wedding\nWear',
      'Mehendi',
      'Bartender',
      'Decoration',
      'Choreography'
    ];
    var selected = false.obs;
    return Column(
      children: [
        Obx(
          () => Stack(
            alignment: Alignment.topRight,
            children: [
              GestureDetector(
                onTap: () {
                  selected.value = !selected.value;
                },
                child: CircleAvatar(
                  radius: 37.h,
                  backgroundColor:
                      selected.value ? AppColors.buttoncolour : AppColors.white,
                  child: Container(
                    width: 69.h,
                    height: 69.h,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                          image: AssetImage(pngLogo[index]), fit: BoxFit.fill),
                      shape: const OvalBorder(),
                      shadows: const [
                        BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4))
                      ],
                    ),
                  ),
                ),
              ),
              selected.value
                  ? CircleAvatar(
                      backgroundColor: AppColors.buttoncolour,
                      radius: 10.h,
                      child: Icon(Icons.done, color: Colors.white, size: 13.h),
                    )
                  : const SizedBox()
            ],
          ),
        ),
        sizedBoxHeight(6.h),
        textBlack_14_400(nameLogo[index]),
        sizedBoxHeight(25.h)
      ],
    );
  }

  AlertDialog superbDialog() {
    return AlertDialog(
        content: Column(mainAxisSize: MainAxisSize.min, children: [
      SizedBox(
        height: 165.h,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
                top: 15.h,
                child:
                    SvgPicture.asset('assets/svg/tajMahel.svg', height: 104.h)),
            Positioned(
                left: 0.w,
                right: 49.w,
                child: SvgPicture.asset(
                    globalBrideBool.value
                        ? 'assets/svg/bride.svg'
                        : 'assets/svg/groom1.svg',
                    height: 133.h)),
            Positioned(
              right: 0,
              left: 49.w,
              child: SvgPicture.asset(
                  globalBrideBool.value
                      ? 'assets/svg/groom.svg'
                      : 'assets/svg/bride1.svg',
                  height: 133.h),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 18.w,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/svg/greatFlower.svg', height: 138.h),
                  SvgPicture.asset('assets/svg/greatFlower2.svg', height: 58.h),
                ],
              ),
            ),
          ],
        ),
      ),
      textblack_35w700('Superb!!'),
      sizedBoxHeight(22.h),
      text373737_22w400center(
          'We are all set to share the Bessst wedding for you'),
      sizedBoxHeight(50.h),
      commonNextButton(
        "Let's Go",
        onTap: () => Get.toNamed(RouteName.custombottombar),
      )
    ]));
  }
}
