import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:timer_button/timer_button.dart';
import 'package:wedzy_duo/Routes/route_name.dart';
import 'package:wedzy_duo/Utils/Common/sized_box.dart';
import 'package:wedzy_duo/Utils/Common/texts.dart';
import 'package:wedzy_duo/Utils/Common/themedata.dart';
import 'package:wedzy_duo/Utils/Widgets/common_next_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController loginotp = TextEditingController();
  bool isValidPhoneNumber(String phoneNumber) {
    final RegExp phoneNumberExpression = RegExp(r"^0{10}$");

    return !phoneNumberExpression.hasMatch(phoneNumber);
  }

  bool _sendOTPclicked = false;
  final mobile = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 33.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  "assets/svg/wedzylogo.svg",
                )),
            sizedBoxHeight(30.h),
            textblack_25w700("Welcome Back!"),
            sizedBoxHeight(8.h),
            textFF373434_20w400("Login to your account"),
            sizedBoxHeight(8.h),
            Container(
              width: double.infinity,
              height: 77.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 0.15, color: Color(0xFFD9D9D9)),
                  borderRadius: BorderRadius.circular(5),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x3F999999),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text9B9B9B_15w400("Enter your phone"),
                        sizedBoxHeight(10.h),
                        Container(
                          height: 25.h,
                          width: 160.w,
                          child: TextFormField(
                            controller: mobile,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp('[0-9]')),
                              LengthLimitingTextInputFormatter(10)
                            ],
                            cursorColor: const Color(0xFFC3C3C3),
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFC3C3C3),
                                ),
                              ),
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFC3C3C3),
                                ),
                              ),
                              icon: Text(
                                '+91',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.spMin,
                                  fontFamily: 'AvenirNextCyr',
                                  fontWeight: FontWeight.w400,
                                  // letterSpacing: 0.15,
                                ),
                              ),
                            ),
                            onSaved: (String? value) {
                              // This optional block of code can be used to run
                              // code when the user saves the form.
                            },
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return "Empty value";
                              } else if (value.length != 10) {
                                return "Please Enter Valid Phone Number";
                              } else if (!isValidPhoneNumber(value)) {
                                return 'Phone number cannot contain 10 zeros';
                              }
                              return null;
                            },
                          ),
                        )
                      ],
                    ),
                    !_sendOTPclicked
                        ? InkWell(
                            onTap: () {
                              // Get.snackbar("Successful", "OTP Sent");
                              setState(() {
                                if (mobile.text.isEmpty) {
                                  // _otpSent = false;
                                  Flushbar(
                                    message: "Please Enter Phone Number",
                                    duration: const Duration(seconds: 3),
                                  ).show(context);
                                } else {
                                  _sendOTPclicked = true;
                                  Get.snackbar("Successful", "OTP Sent");

                                  // checkNumberExist();
                                }
                              });
                            },
                            child: Container(
                              width: 109,
                              height: 40,
                              decoration: const ShapeDecoration(
                                color: Color(0xFFEF2B7B),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Send OTP',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.15,
                                  ),
                                ),
                              ),
                            ),
                          )
                        :
                        //  mobile.text.isEmpty ?
                        //               TextButton(
                        //                     style: TextButton.styleFrom(
                        //                         backgroundColor: Color(0xFFF78104)),
                        //                     onPressed: () {
                        //                       setState(() {
                        //                         if (mobile.text.isEmpty) {
                        //                           // _otpSent = false;
                        //                           Flushbar(
                        //                             message:
                        //                                 "Please Enter Phone Number",
                        //                             duration:
                        //                                 const Duration(seconds: 3),
                        //                           ).show(context);
                        //                         } else {
                        //                           // checkNumberExist();
                        //                         }
                        //                       });
                        //                     },
                        //                     child: Text(
                        //                       "Resend",
                        //                       style: TextStyle(
                        //                           fontSize: 14,
                        //                           color: Colors.white),
                        //                     ),
                        //                   )
                        //                   :

                        Container(
                            width: 120,
                            height: 40,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFEF2B7B),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                              ),
                            ),
                            child: TimerButton(
                              disabledTextStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 15.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.15,
                              ),
                              activeTextStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 15.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.15,
                              ),
                              buttonType: ButtonType.TextButton,
                              label: "Resend",
                              timeOutInSeconds: 5,
                              // mobile.text.isEmpty ?  1 : 60,
                              onPressed: () {
                                setState(() {
                                  if (mobile.text.isEmpty) {
                                    // _otpSent = false;
                                    Flushbar(
                                      message: "Please Enter Phone Number",
                                      duration: const Duration(seconds: 3),
                                    ).show(context);
                                  } else {
                                    // checkNumberExist();
                                  }
                                });
                              },
                              disabledColor: AppColors.buttoncolour,
                              color: AppColors.buttoncolour,
                            ),
                          ),

                    // InkWell(
                    //   onTap: () {
                    //     Get.snackbar("Successful", "OTP Sent");
                    //   },
                    //   child: Container(
                    //     width: 109,
                    //     height: 40,
                    //     decoration: const ShapeDecoration(
                    //       color: Color(0xFFEF2B7B),
                    //       shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.only(
                    //           topRight: Radius.circular(10),
                    //           bottomLeft: Radius.circular(10),
                    //         ),
                    //       ),
                    //     ),
                    //     child: Center(
                    //       child: Text(
                    //         'Send OTP',
                    //         style: TextStyle(
                    //           color: Colors.white,
                    //           fontSize: 15.sp,
                    //           fontFamily: 'AvenirNextCyr',
                    //           fontWeight: FontWeight.w700,
                    //           letterSpacing: 0.15,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
            sizedBoxHeight(31.h),
            Align(
                alignment: Alignment.center,
                child: text70707016w400("Enter 4 digit OTP")),
            sizedBoxHeight(31.h),
            Container(
              child: PinCodeTextField(
                showCursor: true,
                cursorColor: const Color(0xFF143C6D),
                textStyle:
                    TextStyle(fontSize: 18.sm, color: const Color(0xFF143C6D)),
                errorTextSpace: 22,
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
                  selectedFillColor: Colors.white,
                  inactiveFillColor: Colors.white,
                  inactiveColor: const Color(0xFFCCCCCC),
                  activeColor: const Color(0xFFCCCCCC),
                  selectedColor: const Color(0xFFCCCCCC),
                  shape: PinCodeFieldShape.box,
                  borderWidth: 0.10,
                  borderRadius: BorderRadius.circular(5),
                  activeBoxShadow: [
                    const BoxShadow(
                      color: Color(0x3F4C4C4C),
                      blurRadius: 4,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                    )
                  ],
                  inActiveBoxShadow: [
                    const BoxShadow(
                      color: Color(0x3F4C4C4C),
                      blurRadius: 4,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                    )
                  ],
                  fieldHeight: 60.h,
                  fieldWidth: 52.w,
                  activeFillColor: Colors.white,
                ),
                animationDuration: const Duration(milliseconds: 300),
                enableActiveFill: true,
                controller: loginotp,
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
            ),
            sizedBoxHeight(190.h),
            commonNextButton("Next", onTap: () {
               Get.toNamed(RouteName.custombottombar);                
            }),
          ],
        ),
      )),
    );
  }
}
