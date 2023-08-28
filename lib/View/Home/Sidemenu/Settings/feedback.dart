import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wedzy_duo/Utils/Common/sized_box.dart';
import 'package:wedzy_duo/Utils/Common/texts.dart';
import 'package:wedzy_duo/Utils/Common/themedata.dart';

class Feedbackpage extends StatefulWidget {
  const Feedbackpage({super.key});

  @override
  State<Feedbackpage> createState() => _FeedbackpageState();
}

class _FeedbackpageState extends State<Feedbackpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                width: double.infinity,
                height: 900.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/png/Blue & Beige Minimalistic Floral Elegant Indian Wedding Invitation Card 1.png"),
                        fit: BoxFit.fill)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
                child: Row(
                  children: [
                    Container(
                      width: 38.w,
                      height: 35.h,
                      decoration: ShapeDecoration(
                        color: Color(0xFFFEF3F8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.arrow_back,
                            color: Color(0xFFEF2B7B),
                          ),
                        ],
                      ),
                    ),
                    sizedBoxWidth(8.w),
                    text373434_18w700("Feedback")
                  ],
                ),
              ),
              Positioned(
                left: 30,
                right: 0,
                bottom: 220,
                top: 0,
                child: Image.asset(
                  "assets/png/image-removebg-preview (3) 1 (1).png",
                  // width: 405.h,
                ),
              ),
              Positioned(
                  left: 80,
                  right: 0,
                  bottom: 0,
                  top: 530,
                  child: textEE3764_20w700("RATE YOUR EXPERIENCE")),
              Positioned(
                  left: 80,
                  right: 0,
                  bottom: 0,
                  top: 560,
                  child: textEE3764_18w400(
                      "How satisfy are you with our \n                  service?")),
              Positioned(
                left: 30,
                right: 0,
                bottom: 0,
                top: 620,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 70,
                            height: 70,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 0.25, color: Color(0xFFCECECE)),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 1),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/png/amazing1.png",
                                  width: 50.w,
                                  height: 50.h,
                                ),
                              ],
                            )),
                        // Container(
                        //     width: 65,
                        //     height: 65,
                        //     decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(50),
                        //       boxShadow: [
                        //         BoxShadow(
                        //           color: AppColors.buttoncolour,
                        //           blurRadius: 4,
                        //           offset: Offset(0, 2),
                        //           spreadRadius: 0,
                        //         ),
                        //       ],
                        //     ),

                        //     child: Row(
                        //       crossAxisAlignment: CrossAxisAlignment.center,
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       children: [
                        //         Image.asset(
                        //           "assets/png/amazing1.png",
                        //           width: 50.w,
                        //           height: 50.h,
                        //         ),
                        //       ],
                        //     )
                        //     ),
                        textEE3764_14w400("Amazing"),
                      ],
                    ),
                    sizedBoxWidth(23.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 2),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/png/amazing1.png"),
                              ],
                            )),
                        textEE3764_14w400("Amazing"),
                      ],
                    ),
                    sizedBoxWidth(23.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 2),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/png/amazing1.png"),
                              ],
                            )),
                        textEE3764_14w400("Amazing"),
                      ],
                    ),
                    sizedBoxWidth(23.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 2),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/png/amazing1.png"),
                              ],
                            )),
                        textEE3764_14w400("Amazing"),
                      ],
                    ),
                  ],
                ),
              )
            ]),
          ],
        ),
      )),
    );
  }
}
