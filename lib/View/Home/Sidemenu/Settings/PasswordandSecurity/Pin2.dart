import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:wedzy_duo/Routes/route_name.dart';
import 'package:wedzy_duo/Utils/Common/customdesignbutton.dart';
import 'package:wedzy_duo/Utils/Common/texts.dart';
import 'package:wedzy_duo/Utils/Common/themedata.dart';
import 'package:wedzy_duo/Utils/Widgets/common_appbar_dynamic.dart';

class SetPin2 extends StatefulWidget {
  const SetPin2({super.key});

  @override
  State<SetPin2> createState() => _SetPin2State();
}

class _SetPin2State extends State<SetPin2> {
  final pincode = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,

      appBar: CustomAppBarDynamic(
        titleTxt: "Set Up Pin",
        preferredSize: Size.fromHeight(50),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Column(
            children: [
              SizedBox(
                height: 67.h,
              ),
              text373434_15w400("Confirm your Pin"),
              SizedBox(
                height: 131.h,
              ),
              PinCodeTextField(
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return "Please enter pin";
                  } else if (value != null && value.length < 4) {
                    return "Pin length should be atleast 4 digit";
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                length: 4,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  selectedFillColor: Get.isDarkMode
                      ? Color(0xFF303030).withOpacity(0.4)
                      : Colors.white,
                  inactiveFillColor: Get.isDarkMode
                      ? Color(0xFF303030).withOpacity(0.4)
                      : Colors.white,
                  inactiveColor: Color(0xFF707070),
                  activeColor: Color(0xFFEE3764),
                  selectedColor: Color(0xFFEE3764),
                  shape: PinCodeFieldShape.underline,
                  fieldHeight: 70,
                  fieldWidth: 70,
                  activeFillColor: Get.isDarkMode
                      ? Color(0xFF303030).withOpacity(0.4)
                      : Colors.white,
                ),
                animationDuration: Duration(milliseconds: 300),
                enableActiveFill: true,
                controller: pincode,
                onCompleted: (v) {
                  print("Completed");
                },
                onChanged: (value) {
                  print(value);
                  setState(() {});
                },
                beforeTextPaste: (text) {
                  print("Allowing to paste $text");

                  return true;
                },
                appContext: context,
              ),
              SizedBox(
                height: 87.h,
              ),
              CustomDesignButton(
                  text: "Continue",
                  onPressed: () {
                    Get.back();
                    Get.back();
                    Get.back();
                    // Get.toNamed(RouteName.setPin2);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
