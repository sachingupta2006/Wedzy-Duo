import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wedzy_duo/Routes/route_name.dart';
import 'package:wedzy_duo/Utils/Common/sized_box.dart';
import 'package:wedzy_duo/Utils/Common/texts.dart';
import 'package:wedzy_duo/Utils/Common/themedata.dart';
import 'package:wedzy_duo/Utils/Widgets/common_appbar_dynamic.dart';
import 'package:wedzy_duo/Utils/Widgets/common_next_button.dart';
import 'package:wedzy_duo/Utils/Widgets/custom_form_container.dart';

class CancelOrder extends StatefulWidget {
  const CancelOrder({super.key});

  @override
  State<CancelOrder> createState() => _CancelOrderState();
}

class _CancelOrderState extends State<CancelOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBarDynamic(
          titleTxt: "My orders", preferredSize: Size.fromHeight(50)),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textblack_15w400("Order ID - 5778654"),
              sizedBoxHeight(10.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/png/completed.png"),
                  sizedBoxWidth(12.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textBlack16w400("Necklase"),
                      sizedBoxHeight(6.h),
                      textBlack_14_400("Qyt: 1"),
                      sizedBoxHeight(6.h),
                      textBlack_14_400("₹ 20,000")
                    ],
                  ),
                  sizedBoxWidth(31.w),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/svg/star.svg"),
                      sizedBoxWidth(3.w),
                      text7070770_14w400("(4.5)")
                    ],
                  )
                ],
              ),
              sizedBoxHeight(17.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textBlack_14_400("Canceled QTY - 1"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/svg/info.svg"),
                      sizedBoxWidth(5.w),
                      textEF2B2B_14w400("View return policy")
                    ],
                  ),
                ],
              ),
              sizedBoxHeight(35.h),
              textBlack16w400("Cancel Request Details"),
              sizedBoxHeight(20.h),
              textBlack_14_400("Reason for cancelation"),
              sizedBoxHeight(4.h),
              CustomFormContainer(
                hintText: "Enter reason",
              ),
              sizedBoxHeight(12.h),
              textBlack_14_400("More details"),
              sizedBoxHeight(4.h),
              CustomFormContainer(
                hintText: "More details",
              ),
              sizedBoxHeight(220.h),
              commonNextButton(
                "Confirm Cancellation",
                onTap: () {
                  Get.toNamed(RouteName.confirmcancelorder);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
