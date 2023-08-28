import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../Utils/Common/sized_box.dart';
import '../../Utils/Common/texts.dart';
import '../../Utils/Common/themedata.dart';
import '../../Utils/Widgets/common_appbar_dynamic.dart';
import '../../Utils/Widgets/common_next_button.dart';

class FamilyReg3 extends StatelessWidget {
  const FamilyReg3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: commonNextButton(
        'Submit',
        margin: 16.w,
        // onTap: () => Get.toNamed(RouteName.),
      ),
      appBar: const CustomAppBarDynamic(
          titleTxt: '', preferredSize: Size.fromHeight(50)),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sizedBoxHeight(30.h),
            Center(
                child:
                    textBlack20w700center("Let’s Complete This\nVerification")),
            Center(child: text70707016w400('Enter 4 Digit OTP')),
            sizedBoxHeight(70.h),
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
                // controller: loginotp,
                onCompleted: (v) {},
                onChanged: (value) {
                  print(value);
                  // setState(() {});
                },
                beforeTextPaste: (text) {
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
