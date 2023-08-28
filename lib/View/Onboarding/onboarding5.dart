import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wedzy_duo/Routes/route_name.dart';
import 'package:wedzy_duo/Utils/Common/themedata.dart';
import 'package:wedzy_duo/Utils/Widgets/common_appbar_dynamic.dart';
import 'package:wedzy_duo/Utils/Widgets/common_next_button.dart';
import '../../Utils/Common/sized_box.dart';
import '../../Utils/Common/texts.dart';

RxBool globalBrideBool = false.obs;

class Onboarding5 extends StatelessWidget {
  const Onboarding5({super.key});

  @override
  Widget build(BuildContext context) {
    var groomBool = false.obs;
    var brideBool = false.obs;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: commonNextButton(
        'Next',
        margin: 16.w,
        onTap: () {
          Get.toNamed(RouteName.onboarding6);
        },
      ),
      appBar: const CustomAppBarDynamic(
          titleTxt: '', preferredSize: Size.fromHeight(50)),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/png/onboarding5.png'))),
          child: Column(
            children: [
              sizedBoxHeight(30.h),
              textblack_25w700center('Unveil Your Role-Bride Or Groom?'),
              sizedBoxHeight(40.h),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        globalBrideBool.value = true;
                        brideBool.value = true;
                        groomBool.value = false;
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2 - 24.w,
                        height: 46.h,
                        decoration: ShapeDecoration(
                          color: brideBool.value
                              ? AppColors.buttoncolour
                              : Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23),
                          ),
                          shadows: const [
                            BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 1))
                          ],
                        ),
                        child: Center(
                          child: brideBool.value
                              ? textWhite18w400('Bride')
                              : textEF2B7B_18w400('Bride'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        globalBrideBool.value = false;
                        brideBool.value = false;
                        groomBool.value = true;
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2 - 24.w,
                        height: 46.h,
                        decoration: ShapeDecoration(
                          color: groomBool.value
                              ? AppColors.buttoncolour
                              : Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23),
                          ),
                          shadows: const [
                            BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 1))
                          ],
                        ),
                        child: Center(
                          child: groomBool.value
                              ? textWhite18w400('Groom')
                              : textEF2B7B_18w400('Groom'),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
