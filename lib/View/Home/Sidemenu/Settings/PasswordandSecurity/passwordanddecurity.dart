import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wedzy_duo/Routes/route_name.dart';
import 'package:wedzy_duo/Utils/Common/sized_box.dart';
import 'package:wedzy_duo/Utils/Common/themedata.dart';
import 'package:wedzy_duo/Utils/Widgets/common_appbar_dynamic.dart';

class PasswordandSecurity extends StatefulWidget {
  const PasswordandSecurity({super.key});

  @override
  State<PasswordandSecurity> createState() => _PasswordandSecurityState();
}

class _PasswordandSecurityState extends State<PasswordandSecurity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBarDynamic(
          titleTxt: "Password & Security", preferredSize: Size.fromHeight(50)),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(top: 90.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 116.w,
                height: 116.h,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/png/material-symbols_fingerprint.png"),
                    // fit: BoxFit.fill
                  ),
                  color: Colors.white,
                  shape: OvalBorder(
                    side: BorderSide(width: 0.10, color: Color(0xFFE0E0E0)),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F707070),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
              ),
            ),
            sizedBoxHeight(24.h),
            GestureDetector(
              onTap: () {
                 Get.toNamed(RouteName.fingerprintmain);
              },
              child: Text(
                'Add Touch ID',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFEF2B7B),
                  fontSize: 16.sp,
                  fontFamily: 'AvenirNextCyr',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            sizedBoxHeight(46.h),
            Text(
              'OR',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFEF2B7B),
                fontSize: 14.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w400,
              ),
            ),
            sizedBoxHeight(46.h),
            Container(
              width: 116.w,
              height: 116.h,
              decoration: ShapeDecoration(
                image: DecorationImage(image: AssetImage("assets/png/pin.png")),
                color: Colors.white,
                shape: OvalBorder(
                  side: BorderSide(width: 0.10, color: Color(0xFFE0E0E0)),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F707070),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
            sizedBoxHeight(24.h),
            InkWell(
              onTap: () {
                Get.toNamed(RouteName.setPin1);
              },
              child: Text(
                'Add 4 digit pin',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFEF2B7B),
                  fontSize: 16.sp,
                  fontFamily: 'AvenirNextCyr',
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
