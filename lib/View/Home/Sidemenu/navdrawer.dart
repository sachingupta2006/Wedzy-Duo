import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wedzy_duo/Routes/route_name.dart';
import 'package:wedzy_duo/Utils/Common/sized_box.dart';
import 'package:wedzy_duo/Utils/Common/texts.dart';
import 'package:wedzy_duo/Utils/Common/themedata.dart';
import 'package:wedzy_duo/View/Home/Sidemenu/profile.dart';
import 'package:wedzy_duo/View/Onboarding/onboarding5.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({super.key});

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: double.infinity,
              // height: 230,
              decoration: ShapeDecoration(
                color: Color(0xFFF05E90),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assets/png/newimage1.png",
                            width: 80,
                            height: 70,
                            color: AppColors.white,
                          ),
                          // SvgPicture.asset(
                          //   "assets/svg/Clip path group (1).svg",
                          //   width: 80.w,
                          //   //  height: 80,
                          // ),
                          Positioned(
                              left: 24,
                              top: 11,
                              child: GestureDetector(
                                onTap: () {
                                  Get.back();
                                },
                                child: Container(
                                  width: 38,
                                  height: 35,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFFEF3F8),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset("assets/svg/cross.svg")
                                    ],
                                  ),
                                ),
                              ))
                        ],
                      ),
                      Image.asset(
                        "assets/png/newimage2.png",
                        color: AppColors.white,
                      )
                      // SvgPicture.asset("assets/svg/Clip path group (2).svg"),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 29.w,
                    ),
                    child: Row(
                      children: [
                        Stack(children: [
                          CircleAvatar(
                            radius: 38.h,
                            backgroundColor: AppColors.white,
                            child: Obx(
                              () => CircleAvatar(
                                  radius: 36.h,
                                  backgroundColor: AppColors.white,
                                  child: profilePicPath.value != ''
                                      ? ClipOval(
                                          child: Image(
                                              image: FileImage(
                                                  File(profilePicPath.value)),
                                              fit: BoxFit.fill))
                                      : Image.asset('assets/png/dpBig.png',
                                          fit: BoxFit.fill)),
                            ),
                          ),
                          Positioned(
                              left: 14,
                              bottom: 0,
                              child: Container(
                                width: 50,
                                height: 13,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6)),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      globalBrideBool.value ? 'Bride' : 'Groom',
                                      style: TextStyle(
                                          color: const Color(0xFFEF2B7B),
                                          fontSize: 10.sp,
                                          fontFamily: 'AvenirNextCyr',
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ))
                        ]),
                        sizedBoxWidth(12.w),
                        GestureDetector(
                          onTap: () => Get.toNamed(RouteName.profile),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Obx(() => textWhite_18w700(nameValue.value)),
                              sizedBoxHeight(2.h),
                              Obx(() => textWhite16w400(phoneValue.value))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/png/newimage3.png",
                    width: 60,
                    height: 60,
                    color: AppColors.white,
                  )
                  // SvgPicture.asset("assets/svg/Clip path group (3).svg")
                ],
              ),
            ),
            // sizedBoxHeight(28.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset("assets/svg/bookings.svg"),
                      sizedBoxWidth(18.w),
                      text373434_14_600("My Bookings"),
                    ],
                  ),
                  sizedBoxHeight(27.h),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(RouteName.guestlist);
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/svg/guestlist.svg"),
                        sizedBoxWidth(18.w),
                        text373434_14_600("Guest List"),
                      ],
                    ),
                  ),
                  sizedBoxHeight(27.h),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(RouteName.einvitepage);
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/svg/navdrawer1.svg"),
                        sizedBoxWidth(18.w),
                        text373434_14_600("E-Invites"),
                      ],
                    ),
                  ),
                  sizedBoxHeight(27.h),
                  Row(
                    children: [
                      SvgPicture.asset("assets/svg/message.svg"),
                      sizedBoxWidth(18.w),
                      text373434_14_600("Messages"),
                    ],
                  ),
                  sizedBoxHeight(27.h),
                  InkWell(
                    onTap: () {
                      Get.toNamed(RouteName.myorders);
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/svg/bag.svg"),
                        sizedBoxWidth(18.w),
                        text373434_14_600("My orders"),
                      ],
                    ),
                  ),
                  sizedBoxHeight(27.h),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(RouteName.mywallet);
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/svg/wallet.svg"),
                        sizedBoxWidth(18.w),
                        text373434_14_600("Wallet"),
                      ],
                    ),
                  ),
                  sizedBoxHeight(27.h),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(RouteName.settingsmain);
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/svg/settings.svg"),
                        sizedBoxWidth(18.w),
                        text373434_14_600("Settings"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // sizedBoxHeight(20.h),
            Center(
              child: Image.asset(
                "assets/png/ele 1.png",
                // width: 385,
                // width: double.infinity,
              ),
            )

            // Stack(
            //   children: [
            //     Center(
            //       child: Image.asset(
            //         "assets/png/elephantsidebar.png",
            //         fit: BoxFit.fitHeight,
            //       ),
            //     ),
            //     Stack(
            //       alignment: Alignment.center,
            //       children: [
            //         Positioned(
            //           bottom: 0,
            //           left: 0,
            //           child: SvgPicture.asset(
            //             "assets/svg/lotusleft.svg",
            //             height: 95.h,
            //             width: 95.h,
            //           ),
            //         ),
            //         Positioned(
            //           left: 15.w,
            //           bottom: 0,
            //           child: SvgPicture.asset(
            //             "assets/svg/lotus2.svg",
            //             height: 155.h,
            //           ),
            //         ),
            //       ],
            //     ),
            //     Stack(
            //       children: [
            //         Positioned(
            //           bottom: 0,
            //           right: 0,
            //           child: SvgPicture.asset(
            //             "assets/svg/lotusleft.svg",
            //             height: 95.h,
            //             width: 95.h,
            //           ),
            //         ),
            //         Positioned(
            //           right: 5.w,
            //           bottom: 0,
            //           child: SvgPicture.asset(
            //             "assets/svg/lotus2.svg",
            //             height: 155.h,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
