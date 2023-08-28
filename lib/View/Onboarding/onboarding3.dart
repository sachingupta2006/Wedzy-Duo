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

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    var selectBool1 = false.obs;
    var selectBool2 = false.obs;
    var selectBool3 = false.obs;
    return Scaffold(
      bottomNavigationBar: commonNextButton("Let's Go", margin: 16.w,onTap: () => Get.toNamed(RouteName.onboarding4),),
      backgroundColor: Colors.white,
      appBar: const CustomAppBarDynamic(
          titleTxt: '', preferredSize: Size.fromHeight(50)),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              sizedBoxHeight(30.h),
              textBlack22W700Center('Come on in, Tell us why \nyou’re here'),
              sizedBoxHeight(50.h),
              selectWidget(
                  'I’m Getting Married',
                  'Uniting Two Hearts in Eternal Love and Joy',
                  selectBool1.value, () {
                selectBool1.value = true;
                selectBool2.value = false;
                selectBool3.value = false;
              }),
              selectWidget(
                  'Couple’s Family / Friend',
                  'Strengthening Ties with Couples Celebrating Love',
                  selectBool2.value, () {
                selectBool1.value = false;
                selectBool2.value = true;
                selectBool3.value = false;
              }),
              selectWidget(
                  'Guest User',
                  'Here to Discover the Perfect Wedding App',
                  selectBool3.value, () {
                selectBool1.value = false;
                selectBool2.value = false;
                selectBool3.value = true;
              })
            ],
          ),
        ),
      ),
    );
  }

  Widget selectWidget(
      String title, String txt, bool bool, void Function()? onTap) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.only(
                left: 10.w, bottom: 15.h, right: 20.w, top: 15.h),
            width: double.infinity,
            decoration: ShapeDecoration(
              color: const Color(0xFFFEF3F8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/svg/lotus.svg'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textBlack16w400(title),
                    sizedBoxHeight(5.h),
                    Container(
                        constraints: BoxConstraints(maxWidth: 200.w),
                        child: text7070770_14w400(txt)),
                  ],
                ),
                CircleAvatar(
                  radius: 10.h,
                  backgroundColor: AppColors.buttoncolour,
                  child: CircleAvatar(
                    radius: 9.h,
                    backgroundColor: const Color(0xFFFEF3F8),
                    child: bool
                        ? CircleAvatar(
                            radius: 7.h,
                            backgroundColor: AppColors.buttoncolour,
                          )
                        : null,
                  ),
                )
              ],
            ),
          ),
        ),
        sizedBoxHeight(20.h)
      ],
    );
  }
}
