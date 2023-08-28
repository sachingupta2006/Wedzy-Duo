import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wedzy_duo/Routes/route_name.dart';
import 'package:wedzy_duo/Utils/Common/sized_box.dart';
import 'package:wedzy_duo/Utils/Common/texts.dart';
import 'package:wedzy_duo/Utils/Common/themedata.dart';
import 'package:wedzy_duo/Utils/Widgets/common_next_button.dart';

class Onboarding4 extends StatelessWidget {
  const Onboarding4({super.key});

  @override
  Widget build(BuildContext context) {
    var checkBool = false.obs;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  image: AssetImage('assets/png/onboarding4.png'),
                  opacity: 0.81,
                  fit: BoxFit.fill)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  sizedBoxHeight(5.h),
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Container(
                      height: 35.h,
                      width: 35.h,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFFEF3F8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Color(0xFFEF2B7B),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(
                        () => Checkbox(
                          side: BorderSide(color: Colors.white, width: 1.5.h),
                          activeColor: Colors.white,
                          checkColor: AppColors.buttoncolour,
                          value: checkBool.value,
                          onChanged: (value) =>
                              checkBool.value = !checkBool.value,
                        ),
                      ),
                      textWhite15w500Montserrat('I accept terms & condition'),
                    ],
                  ),
                  sizedBoxHeight(10.h),
                  commonNextButton(
                    'Plan my wedding',
                    onTap: () => Get.toNamed(RouteName.onboarding5),
                  ),
                  sizedBoxHeight(20.h),
                  GestureDetector(
                    onTap: () => Get.toNamed(RouteName.familyFriendsReg),
                    child: Container(
                      width: double.infinity,
                      height: 50.h,
                      decoration: ShapeDecoration(
                        color: Colors.white.withOpacity(0.3),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                      ),
                      child: Center(
                          child: textWhite15w500Montserrat('Join a wedding')),
                    ),
                  ),
                  sizedBoxHeight(88.h),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
