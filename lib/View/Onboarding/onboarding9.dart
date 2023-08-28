import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:wedzy_duo/Routes/route_name.dart';
import '../../Utils/Common/sized_box.dart';
import '../../Utils/Common/texts.dart';
import '../../Utils/Common/themedata.dart';
import '../../Utils/Widgets/common_appbar_dynamic.dart';
import '../../Utils/Widgets/common_next_button.dart';
import 'onboarding5.dart';

class Onboarding9 extends StatelessWidget {
  const Onboarding9({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController loginotp = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: commonNextButton('Submit',
          margin: 16.w, onTap: () => Get.toNamed(RouteName.onboarding10)),
      appBar: const CustomAppBarDynamic(
          titleTxt: '', preferredSize: Size.fromHeight(50)),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/png/onboarding5.png'))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 70.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 145.w,
                        height: 6.h,
                        decoration: ShapeDecoration(
                          color: AppColors.buttoncolour,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3)),
                        ),
                      ),
                      Container(
                        width: 185.w,
                        height: 6.h,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFFB3D7),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3)),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 5.h,
                    left: 145.w,
                    child: SvgPicture.asset(globalBrideBool.value
                        ? 'assets/svg/bride.svg'
                        : 'assets/svg/groom1.svg'),
                  ),
                  Positioned(
                    top: 5.h,
                    right: 12.w,
                    child: SvgPicture.asset(globalBrideBool.value
                        ? 'assets/svg/groom.svg'
                        : 'assets/svg/bride1.svg'),
                  )
                ],
              ),
            ),
            sizedBoxHeight(70.h),
            textblack_25w700center("Let's Complete This\nVerification"),
            sizedBoxHeight(30.h),
            text707070_16w400('Enter 4 Digit OTP'),
            sizedBoxHeight(60.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: PinCodeTextField(
                showCursor: true,
                cursorColor: const Color(0xFF143C6D),
                textStyle:
                    TextStyle(fontSize: 18.sp, color: const Color(0xFF143C6D)),
                errorTextSpace: 30.h,
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return "Please Enter verification code";
                  } else if (value != null && value.length < 4) {
                    return "OTP length should be atleast 4";
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                length: 4,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  selectedFillColor: const Color(0xFFFEF3F8),
                  inactiveFillColor: const Color(0xFFFEF3F8),
                  inactiveColor: AppColors.white,
                  activeColor: AppColors.white,
                  selectedColor: AppColors.white,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 60.h,
                  inactiveBorderWidth: 0,
                  borderWidth: 0,
                  errorBorderWidth: 0,
                  activeBorderWidth: 0,
                  disabledBorderWidth: 0,
                  selectedBorderWidth: 0,
                  fieldWidth: 60.h,
                  activeFillColor: const Color(0xFFFEF3F8),
                ),
                animationDuration: const Duration(milliseconds: 300),
                enableActiveFill: true,
                controller: loginotp,
                onCompleted: (v) {
                  print("Completed");
                },
                onChanged: (value) {
                  print(value);
                  // setState(() {});
                },
                beforeTextPaste: (text) {
                  print("Allowing to paste $text");

                  return true;
                },
                appContext: context,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
