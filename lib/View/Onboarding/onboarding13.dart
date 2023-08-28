import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../Routes/route_name.dart';
import '../../Utils/Common/sized_box.dart';
import '../../Utils/Common/texts.dart';

class Onboarding13 extends StatelessWidget {
  const Onboarding13({super.key});

  @override
  Widget build(BuildContext context) {
    List typeName = [
      'Punjabi',
      'Marwadi',
      'Gujarati',
      'Christan',
      'Muslim',
      'Bengali',
      'Maharastrian',
      'Tamil',
      'Parsi'
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [
              const Color(0xFFEF2B7B),
              const Color(0xFFF05E90).withOpacity(0.2)
            ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                child: const Icon(Icons.arrow_back, color: Color(0xFFEF2B7B)),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  sizedBoxHeight(25.h),
                  textWhite22w700('Choose Your Dream'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              height: 1.5.h, width: 110.w, color: Colors.white),
                          CircleAvatar(
                              backgroundColor: Colors.white, radius: 3.r)
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                              backgroundColor: Colors.white, radius: 3.r),
                          Container(
                              height: 1.5.h, width: 110.w, color: Colors.white),
                        ],
                      ),
                    ],
                  ),
                  textWhite22w700('Wedding Celebration'),
                  sizedBoxHeight(50.h),
                ],
              ),
            ),
            SizedBox(
                height: 550.h,
                child: ListView.builder(
                    itemCount: typeName.length,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: GestureDetector(
                          onTap: () => Get.toNamed(RouteName.onboarding14),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              SvgPicture.asset('assets/svg/weddingType.svg',
                                  height: 550.h),
                              Positioned(
                                  top: 20.h,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 50,
                                        ),
                                      ],
                                    ),
                                    child: ClipOval(
                                      child: Image.asset(
                                          'assets/png/punjabiWedding.png'),
                                    ),
                                  )),
                              Positioned(
                                  bottom: 125.h,
                                  child: textEE3764_20w400(
                                      '${typeName[index]} Wedding')),
                              Positioned(
                                  bottom: 85.h,
                                  child: SizedBox(
                                    width: 200.w,
                                    child: textBlack12w400Center(
                                        '"Harmony in Hues: A Kaleidoscope of Love - The ${typeName[index]} Wedding"'),
                                  )),
                              Positioned(
                                  bottom: 20.h,
                                  child: textWhite15w700('Select'))
                            ],
                          ),
                        ))))
          ],
        ),
      )),
    );
  }
}
