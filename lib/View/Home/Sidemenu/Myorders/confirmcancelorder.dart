import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:wedzy_duo/Utils/Common/sized_box.dart';
import 'package:wedzy_duo/Utils/Common/texts.dart';
import 'package:wedzy_duo/Utils/Common/themedata.dart';
import 'package:wedzy_duo/Utils/Widgets/common_appbar_dynamic.dart';

class Confirmcancelorder extends StatefulWidget {
  const Confirmcancelorder({super.key});

  @override
  State<Confirmcancelorder> createState() => _ConfirmcancelorderState();
}

class _ConfirmcancelorderState extends State<Confirmcancelorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBarDynamic(
          titleTxt: "My orders", preferredSize: Size.fromHeight(50)),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            LottieBuilder.asset(
              "assets/json/cancelorder.json",
              width: 182.w,
              height: 182.h,
            ),
            text3764_22w400("CANCELLATION CONFIRMED"),
            sizedBoxHeight(15.h),
            textBlack_14_400(
                "There will be no refund as the order is purchased \n                       using cash on delivery"),
            sizedBoxHeight(51.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textEE373434_16w600("Keep Shopping"),
                SvgPicture.asset("assets/svg/chevron-right (2).svg")
              ],
            ),
            sizedBoxHeight(19.h),
            Divider(
              thickness: 0.50,
              color: Color(0x66F05E90),
            ),
            sizedBoxHeight(19.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textEE373434_16w600("View all order"),
                SvgPicture.asset("assets/svg/chevron-right (2).svg")
              ],
            ),
          ],
        ),
      )),
    );
  }
}
