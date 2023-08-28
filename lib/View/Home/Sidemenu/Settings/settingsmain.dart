import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:wedzy_duo/Routes/route_name.dart';
import 'package:wedzy_duo/Utils/Common/sized_box.dart';
import 'package:wedzy_duo/Utils/Common/texts.dart';
import 'package:wedzy_duo/Utils/Common/themedata.dart';
import 'package:wedzy_duo/Utils/Widgets/common_appbar_dynamic.dart';

class SettingsmainPage extends StatefulWidget {
  const SettingsmainPage({super.key});

  @override
  State<SettingsmainPage> createState() => _SettingsmainPageState();
}

class _SettingsmainPageState extends State<SettingsmainPage> {
  bool status = false;

  buildDeletedialog(context) {
    return showDialog(
      // barrierDismissible: false,
      context: context,
      builder: (context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AlertDialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 16),
            backgroundColor: Get.isDarkMode ? Colors.black : Color(0XFFFFFFFF),
            contentPadding: EdgeInsets.fromLTRB(38, 15, 38, 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              side: BorderSide(
                  color: Get.isDarkMode ? Colors.grey : Color(0XFFFFFFFF)),
            ),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                    alignment: Alignment.center,
                    child: textBlack_20w400("Delete Contact")),
                sizedBoxHeight(4.h),
                Align(
                    alignment: Alignment.center,
                    child: text707070_16w400(
                        "Are you sure you want to delete \n                 the contact?")),
                sizedBoxHeight(20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 109,
                        height: 43,
                        decoration: const ShapeDecoration(
                          color: AppColors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: AppColors.buttoncolour),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [textBlack_14_600("Cancel")],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                        // _data.removeAt();
                      },
                      child: Container(
                        width: 109,
                        height: 43,
                        decoration: ShapeDecoration(
                          color: Color(0xFFEF2B7B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [textWhite16w400("Delete")],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildtermscondidialog(context) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AlertDialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 16),
            backgroundColor: Get.isDarkMode ? Colors.black : Color(0XFFFFFFFF),
            contentPadding: EdgeInsets.fromLTRB(17, 11, 17, 21),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              side: BorderSide(
                  color: Get.isDarkMode ? Colors.grey : Color(0XFFFFFFFF)),
            ),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //sizedBoxHeight(32.h),
                Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset("assets/svg/x-square.svg"))),
                sizedBoxHeight(2.h),
                Align(
                    alignment: Alignment.center,
                    child: textEE3764_20w700("Terms & Conditions")),
                sizedBoxHeight(19.h),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/svg/termsandconditions.svg")
                    ],
                  ),
                ),
                sizedBoxHeight(29.h),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '1',
                        style: TextStyle(
                          color: Color(0xFFEE3764),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text:
                            '. Lorem ipsum dolor sit amet, conse consectetur adipiscing elit, sed do euio eiusmod tempor incididunt ut labore et \n',
                        style: TextStyle(
                          color: Color(0xFF373434),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: '\n',
                        style: TextStyle(
                          color: Color(0xFFEE3764),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: '2',
                        style: TextStyle(
                          color: Color(0xFFEE3764),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text:
                            '. commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla velit pariatur. \n',
                        style: TextStyle(
                          color: Color(0xFF373434),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: '\n3',
                        style: TextStyle(
                          color: Color(0xFFEE3764),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: '.',
                        style: TextStyle(
                          color: Color(0xFFEE3764),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text:
                            ' commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla velit pariatur. .',
                        style: TextStyle(
                          color: Color(0xFF373434),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxHeight(2.h),
                Align(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                      Get.toNamed(RouteName.termsduo);
                    },
                    child: Text(
                      'Read More',
                      style: TextStyle(
                        color: Color(0xFFEF2B7B),
                        fontSize: 16.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildprivacydialog(context) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AlertDialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 16),
            backgroundColor: Get.isDarkMode ? Colors.black : Color(0XFFFFFFFF),
            contentPadding: EdgeInsets.fromLTRB(17, 11, 17, 21),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              side: BorderSide(
                  color: Get.isDarkMode ? Colors.grey : Color(0XFFFFFFFF)),
            ),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //sizedBoxHeight(32.h),
                Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset("assets/svg/x-square.svg"))),
                sizedBoxHeight(2.h),
                Align(
                    alignment: Alignment.center,
                    child: textEE3764_20w700("Privacy Policy")),
                sizedBoxHeight(19.h),
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Color(0x7FF05E90),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/svg/privacypolicy.svg")
                      ],
                    ),
                  ),
                ),
                sizedBoxHeight(29.h),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '1',
                        style: TextStyle(
                          color: Color(0xFFEE3764),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text:
                            '. Lorem ipsum dolor sit amet, conse consectetur adipiscing elit, sed do euio eiusmod tempor incididunt ut labore et \n',
                        style: TextStyle(
                          color: Color(0xFF373434),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: '\n',
                        style: TextStyle(
                          color: Color(0xFFEE3764),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: '2',
                        style: TextStyle(
                          color: Color(0xFFEE3764),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text:
                            '. commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla velit pariatur. \n',
                        style: TextStyle(
                          color: Color(0xFF373434),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: '\n3',
                        style: TextStyle(
                          color: Color(0xFFEE3764),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: '.',
                        style: TextStyle(
                          color: Color(0xFFEE3764),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text:
                            ' commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla velit pariatur. .',
                        style: TextStyle(
                          color: Color(0xFF373434),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxHeight(2.h),
                Align(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                      Get.toNamed(RouteName.privacyduo);
                    },
                    child: Text(
                      'Read More',
                      style: TextStyle(
                        color: Color(0xFFEF2B7B),
                        fontSize: 16.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBarDynamic(
          titleTxt: "Settings", preferredSize: Size.fromHeight(50)),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 26.h),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 135.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F8B8B8B),
                    blurRadius: 4,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 13.w, top: 13.h, right: 13.w),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textBlack16w400("Account Setting"),
                    sizedBoxHeight(23.h),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: () => buildDeletedialog(context),
                            child: textBlack_14_400("Delete Account")),
                        sizedBoxHeight(5.h),
                        Divider(
                          thickness: 0.50,
                          color: Color(0x42F05E90),
                        ),
                        sizedBoxHeight(5.h),
                        textBlack_14_400("Deactivate my account"),
                      ],
                    )
                  ],
                ),
              ),
            ),
            sizedBoxHeight(15.h),
            Container(
              width: double.infinity,
              height: 135.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F8B8B8B),
                    blurRadius: 4,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 13.w, top: 13.h, right: 13.w),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textBlack16w400("General Setting"),
                    sizedBoxHeight(23.h),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            textBlack_14_400("Notification"),
                            FlutterSwitch(
                              width: 50,
                              height: 25,
                              value: status,
                              toggleColor: const Color(0xFFEE3764),
                              activeColor:
                                  const Color(0xFFEE3764).withOpacity(0.5),
                              inactiveColor: const Color(0xFFFEF3F8),
                              onToggle: (val) {
                                setState(() {
                                  status = val;
                                });
                              },
                            ),
                          ],
                        ),
                        sizedBoxHeight(5.h),
                        Divider(
                          thickness: 0.50,
                          color: Color(0x42F05E90),
                        ),
                        sizedBoxHeight(5.h),
                        GestureDetector(
                            onTap: () {
                              Get.toNamed(RouteName.passwordandsecurity);
                            },
                            child: textBlack_14_400("Password & Security")),
                      ],
                    )
                  ],
                ),
              ),
            ),
            sizedBoxHeight(15.h),
            Container(
              width: double.infinity,
              height: 415.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F8B8B8B),
                    blurRadius: 4,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 13.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: textBlack16w400("Other"),
                    ),
                    sizedBoxHeight(23.h),
                    iconTitle(
                      "assets/svg/help-circle.svg",
                      "FAQ’s",
                      onTap: () {
                        Get.toNamed(RouteName.faqspage);
                      },
                    ),
                    sizedBoxHeight(12.h),
                    Divider(
                      thickness: 0.50,
                      color: Color(0x42F05E90),
                    ),
                    sizedBoxHeight(12.h),
                    iconTitle(
                      "assets/svg/phone-call.svg",
                      "Contact Us",
                      onTap: () {
                        Get.toNamed(RouteName.contactus);
                      },
                    ),
                    sizedBoxHeight(12.h),
                    Divider(
                      thickness: 0.5,
                      color: Color(0x42F05E90),
                    ),
                    sizedBoxHeight(12.h),
                    iconTitle(
                      "assets/svg/aboutus.svg",
                      "About Us",
                      onTap: () {
                        Get.toNamed(RouteName.aboutusduo);
                      },
                    ),
                    sizedBoxHeight(12.h),
                    Divider(
                      thickness: 0.50,
                      color: Color(0x42F05E90),
                    ),
                    sizedBoxHeight(12.h),
                    iconTitle(
                      "assets/svg/smile.svg",
                      "Feedback",
                      onTap: () {
                        Get.toNamed(RouteName.feedbackpage);
                      },
                    ),
                    sizedBoxHeight(12.h),
                    Divider(
                      thickness: 0.50,
                      color: Color(0x42F05E90),
                    ),
                    sizedBoxHeight(12.h),
                    iconTitle(
                      "assets/svg/termsandcondi.svg",
                      "Terms & Condition",
                      onTap: () => buildtermscondidialog(context),
                    ),
                    sizedBoxHeight(12.h),
                    Divider(
                      thickness: 0.50,
                      color: Color(0x42F05E90),
                    ),
                    sizedBoxHeight(12.h),
                    iconTitle(
                      "assets/svg/privacy.svg",
                      "Privacy policy",
                      onTap: () => buildprivacydialog(context),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.start,
                    //   children: [
                    //     SvgPicture.asset("assets/svg/privacy.svg"),
                    //     sizedBoxWidth(6.w),
                    //     textBlack_14_400("Privacy policy"),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
            sizedBoxHeight(26.h),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          textBlack14w500('Are you sure you want to logout?'),
                          sizedBoxHeight(20.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                  onTap: () {
                                    Get.back();
                                  },
                                  child: text373434_14w500('Cancel')),
                              sizedBoxWidth(20.w),
                              InkWell(
                                  onTap: () {
                                    Get.toNamed(RouteName.loginscreen);
                                  },
                                  child: textPrimary14w500('Logout')),
                            ],
                          ),
                          sizedBoxHeight(14.h),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Row(
                children: [
                  SvgPicture.asset("assets/svg/log-in.svg"),
                  sizedBoxWidth(12.w),
                  Text(
                    'Log Out',
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFEF2B7B),
                      fontSize: 16.sp,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }

  Widget iconTitle(image, String txt, {void Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Container(
          // color: Colors.white,
          height: 25.h,
          child: Row(
            children: [
              SvgPicture.asset(image),
              sizedBoxWidth(6.w),
              textBlack_14_400(txt),
            ],
          ),
        ),
      ),
    );
  }
}
