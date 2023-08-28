import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wedzy_duo/Routes/route_name.dart';
import 'package:wedzy_duo/Utils/Common/sized_box.dart';
import 'package:wedzy_duo/Utils/Common/texts.dart';
import 'package:wedzy_duo/Utils/Common/themedata.dart';

class WeddingDiary extends StatefulWidget {
  const WeddingDiary({super.key});

  @override
  State<WeddingDiary> createState() => _WeddingDiaryState();
}

class _WeddingDiaryState extends State<WeddingDiary> {
  var visibleBool = true.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 10.h),
              child: Container(
                width: double.infinity,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(38),
                  border: Border.all(
                    color: Color(0xFFD7D7D7),
                    width: 0.15,

                    // left: BorderSide(color: Color(0xFFD7D7D7)),
                    // top: BorderSide(width: 0.15, color: Color(0xFFD7D7D7)),
                    // right: BorderSide(color: Color(0xFFD7D7D7)),
                    // bottom: BorderSide(color: Color(0xFFD7D7D7)),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 21.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {
                            Get.toNamed(RouteName.navdrawer);
                          },
                          child: SvgPicture.asset("assets/svg/sidebar.svg")),
                      // sizedBoxWidth(54.w),
                      SvgPicture.asset("assets/svg/wedzyimage.svg"),
                      // sizedBoxWidth(54.w),
                      Row(
                        children: [
                          InkWell(
                              onTap: () {
                                Get.toNamed(RouteName.notificationpage);
                              },
                              child: SvgPicture.asset(
                                  "assets/svg/notificationbell.svg")),
                          sizedBoxWidth(26.w),
                          SvgPicture.asset("assets/svg/heart.svg"),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            sizedBoxHeight(14.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Container(
                width: double.infinity,
                height: 385,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/png/weddingdiary.png"),
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(
                      Colors.grey.withOpacity(0.9),
                      BlendMode.modulate,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 36.h),
                      child: textWhite_18w400(" Your Magical Day Awaits!!"),
                    ),
                    sizedBoxHeight(14.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Containergrey("0"),
                        sizedBoxWidth(10.w),
                        Containergrey("0"),
                        sizedBoxWidth(10.w),
                        Containergrey("0"),
                        sizedBoxWidth(10.w),
                        Containergrey("0")
                      ],
                    ),
                    sizedBoxHeight(151.h),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 12.w),
                          child: textWhite32w400("Anushka"),
                        )),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: Row(
                        children: [
                          textWhite45w700("&"),
                          sizedBoxWidth(4.w),
                          textWhite32w400("Virat"),
                          sizedBoxWidth(156.w),
                          SvgPicture.asset("assets/svg/wedzydiarycamera.svg"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            sizedBoxHeight(16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Container(
                width: double.infinity,
                height: 127,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Color(0xFFFFD0E0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F787878),
                      blurRadius: 4,
                      offset: Offset(1, 1),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Stack(
                  children: [
                    SvgPicture.asset("assets/svg/Ellipse 1403.svg"),
                    Positioned(
                        left: 17.w,
                        right: 140.w,
                        top: 20.h,
                        bottom: 10.h,
                        child: Column(
                          children: [
                            textBlack18w700("Find Your Dream Wedding Attire!"),
                            sizedBoxHeight(7.h),
                            textBlack_14_400(
                                "Discover the Finest Collection to rent "),
                          ],
                        )),
                    SvgPicture.asset("assets/svg/Clip path group.svg"),
                    Positioned(
                        right: 10,
                        top: 57,
                        bottom: 30,
                        child: Column(
                          children: [
                            Container(
                              width: 123,
                              height: 40,
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
                                children: [
                                  Text(
                                    'Rent Now',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                      fontFamily: 'AvenirNextCyr',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ),
            sizedBoxHeight(16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Container(
                width: double.infinity,
                height: 130,
                padding: const EdgeInsets.only(
                  top: 52,
                  left: 12,
                  right: 140,
                  bottom: 19,
                ),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/png/weddingdiary2.png"),
                      colorFilter: ColorFilter.mode(
                        Colors.grey.withOpacity(0.9),
                        BlendMode.modulate,
                      ),
                      fit: BoxFit.fill),
                  // color: Colors.black.withOpacity(0.30000001192092896),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0x44F05E90), width: 0.25),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3FBBBBBB),
                      blurRadius: 4,
                      offset: Offset(2, 2),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Wedding Ideas',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Love and tradition in every frame inspired photo ideas',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            sizedBoxHeight(16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Obx(
                () => Visibility(
                  visible: visibleBool.value,
                  child: Column(children: [
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(RouteName.guestlist);
                      },
                      child: Container(
                        width: double.infinity,
                        height: 92,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F7D7D7D),
                              blurRadius: 4,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 10.h,
                                ),
                                child: Stack(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        textBlack16w400(
                                            "Join us in celebrating love and \nunity at our joyful wedding"),
                                        sizedBoxHeight(10.h),
                                        GestureDetector(
                                          onTap: () {
                                            Get.toNamed(RouteName.einvitepage);
                                          },
                                          child: Text(
                                            'Invite Guest',
                                            style: TextStyle(
                                              color: Color(0xFFEF2B7B),
                                              fontSize: 16.sp,
                                              fontFamily: 'AvenirNextCyr',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                        top: 18,
                                        left: 0,
                                        bottom: 0,
                                        right: 220,
                                        child: SvgPicture.asset(
                                            "assets/svg/flowelight.svg"))
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 5.h),
                                    child: GestureDetector(
                                        onTap: () {
                                          visibleBool.value = false;
                                        },
                                        child: SvgPicture.asset(
                                            "assets/svg/cross.svg")),
                                  ),
                                  sizedBoxHeight(11.h),
                                  SvgPicture.asset("assets/svg/flower.svg"),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    sizedBoxHeight(50.h),
                  ]),
                ),
              ),
            ),
            sizedBoxHeight(10.h),
          ],
        ),
      )),
    );
  }

  Widget Containergrey(String text) {
    return Container(
      width: 47,
      height: 47,
      decoration: ShapeDecoration(
        color: Colors.white.withOpacity(0.3400000035762787),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [textWhite_18w400(text)],
      ),
    );
  }
}
