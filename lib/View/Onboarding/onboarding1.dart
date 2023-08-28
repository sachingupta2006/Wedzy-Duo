import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wedzy_duo/Routes/route_name.dart';
import '../../Utils/Common/texts.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({super.key});

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  @override
  Widget build(BuildContext context) {
    var indexValue = 0.obs;
    List title = [
      'The Ultimate \nWedding Planner',
      'Plan with Elegance',
      'Embrace the \nTradition'
    ];
    List description = [
      "Experience the magic of Indian weddings like never before with wedzy. From traditional rituals to modern trends, we've got it all covered. Let's make your dream wedding a reality!",
      "Experience the magic of Indian weddings like never before with wedzy. From traditional rituals to modern trends, we've got it all covered. Let's make your dream wedding a reality!",
      "Experience the magic of Indian weddings like never before with wedzy. From traditional rituals to modern trends, we've got it all covered. Let's make your dream wedding a reality!"
    ];
    List png1 = ['w1', 'w4', 'w7'];
    List png2 = ['w2', 'w5', 'w8'];
    List png3 = ['w3', 'w6', 'w9'];
    return Scaffold(
      backgroundColor: const Color(0xFFFFF9FC),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: 1200,
            child: PageView.builder(
                // controller: pageController,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(height: 20.h),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 46.w),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 6.h),
                                SvgPicture.asset('assets/svg/splshLogo.svg',
                                    width: 80.w),
                                SizedBox(height: 5.h),
                                Image.asset('assets/png/wedzy.png', width: 80.w)
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 16.w),
                              child: GestureDetector(
                                  onTap: () =>
                                      Get.toNamed(RouteName.onboarding2),
                                  child: textEF2B7B_15_500('Skip')),
                            )
                          ]),
                      SizedBox(height: 0.h),
                      SizedBox(
                        width: double.infinity,
                        height: 360.h,
                        child: Stack(
                          alignment: AlignmentDirectional.centerEnd,
                          children: [
                            Positioned(
                                top: 120.h,
                                bottom: 0,
                                left: 0,
                                child: Image.asset(
                                  'assets/png/flowerDown.png',
                                  height: 197.h,
                                )),
                            Positioned(
                                top: 0,
                                right: -35.w,
                                child: Image.asset(
                                  'assets/png/flowerUp.png',
                                  height: 260.h,
                                )),
                            Positioned(
                                top: 35.h,
                                left: 20.w,
                                child: Obx(() => customImage(
                                    png1[indexValue.value],
                                    angle: -0.17))),
                            Positioned(
                                top: 35.h,
                                right: 20.w,
                                child: Obx(() => customImage(
                                    png2[indexValue.value],
                                    angle: 0.17))),
                            Positioned(
                                top: 155.h,
                                right: 60.w,
                                child: Obx(() => customImage(
                                    png3[indexValue.value],
                                    height: 176.h,
                                    width: 225.w))),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Obx(() =>
                                    textEE3764_30_700(title[indexValue.value])),
                                SvgPicture.asset('assets/svg/loading.svg')
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Obx(() => textBlack_14_400(
                                description[indexValue.value])),
                            SizedBox(height: 15.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 6.h,
                                  width: 200.w,
                                  child: ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 3,
                                      separatorBuilder: (context, index) =>
                                          SizedBox(width: 6.w),
                                      itemBuilder: (context, index) {
                                        return Obx(() => Container(
                                              width: indexValue.value == index
                                                  ? 25.w
                                                  : 10.w,
                                              height: 6.h,
                                              decoration: ShapeDecoration(
                                                color: const Color(0xFFEF2B7B),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3)),
                                              ),
                                            ));
                                      }),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    index == 2
                                        ? Get.toNamed(RouteName.onboarding2)
                                        : index++;
                                    indexValue.value = index;
                                  },
                                  child: Container(
                                    width: 50.w,
                                    height: 40.h,
                                    decoration: const ShapeDecoration(
                                      color: Color(0xFFEF2B7B),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(15)),
                                      ),
                                    ),
                                    child: Center(
                                        child: Icon(
                                            Icons.arrow_right_alt_rounded,
                                            color: Colors.white,
                                            size: 25.sp)),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }

  Widget customImage(String name,
      {double? height, double? width, double? angle}) {
    return Transform.rotate(
      angle: angle ?? 0,
      child: Container(
          height: height ?? 150.h,
          width: width ?? 161.w,
          padding: EdgeInsets.all(5.h),
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Color(0x3F000000), blurRadius: 4, offset: Offset(0, 4))
            ],
          ),
          child: Image.asset(
            'assets/png/$name.png',
            fit: BoxFit.fill,
          )),
    );
  }
}
