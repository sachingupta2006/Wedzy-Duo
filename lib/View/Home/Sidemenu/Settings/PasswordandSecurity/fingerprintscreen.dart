import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';
import 'package:wedzy_duo/Routes/route_name.dart';
import 'package:wedzy_duo/Utils/Common/sized_box.dart';
import 'package:wedzy_duo/Utils/Common/themedata.dart';
import 'package:wedzy_duo/Utils/Widgets/common_appbar_dynamic.dart';
import 'package:wedzy_duo/Utils/Widgets/common_next_button.dart';

class Fingerprintmain extends StatefulWidget {
  const Fingerprintmain({super.key});

  @override
  State<Fingerprintmain> createState() => _FingerprintmainState();
}

class _FingerprintmainState extends State<Fingerprintmain> {
  bool? _hasBiometricSensor;

  LocalAuthentication authentication = LocalAuthentication();

  Future<void> _checkBio() async {
    try {
      _hasBiometricSensor = await authentication.canCheckBiometrics;
      print('biometric available on this device : $_hasBiometricSensor');
      if (_hasBiometricSensor!) {
        _getAuth();
      }
    } on PlatformException catch (e) {
      print('reeor');
      print(e);
    }
  }

  Future<void> _getAuth() async {
    bool? isAuth = false;
    try {
      isAuth = await authentication.authenticate(
          localizedReason: 'Use your fingerprint!',
          options: const AuthenticationOptions(
            biometricOnly: false,
            useErrorDialogs: true,
            stickyAuth: true,
          ));
      isAuth
          ? Get.toNamed(RouteName.fingerprintcompleted)
          : Get.snackbar("Not Recognized", "Please Try Again",
              margin: const EdgeInsets.all(8),
              colorText: AppColors.black,
              backgroundColor: Colors.white,
              snackStyle: SnackStyle.FLOATING,
              snackPosition: SnackPosition.TOP);
      print('is Auth $isAuth');
    } on PlatformException catch (e) {
      print('exception is : $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBarDynamic(
        titleTxt: "Password & Security",
        preferredSize: Size.fromHeight(50),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              sizedBoxHeight(42.h),
              Align(
                // alignment: Alignment.center,
                child: Text(
                  'Use fingerprint',
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              sizedBoxHeight(78.h),
              SvgPicture.asset(
                "assets/svg/material-symbols_fingerprint.svg",
                color: Colors.black,
                width: 124.w,
                height: 124.h,
              ),
              sizedBoxHeight(30.h),
              Container(
                width: 289,
                height: 3,
                decoration: BoxDecoration(color: Color(0x1EEE3764)),
                child: Row(
                  children: [
                    Container(
                      width: 143,
                      height: 3,
                      decoration: BoxDecoration(color: Color(0xFFEE3764)),
                    )
                  ],
                ),
              ),
              sizedBoxHeight(9.h),
              Text(
                'Scanning...',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF373434),
                  fontSize: 15.sp,
                  fontFamily: 'AvenirNextCyr',
                  fontWeight: FontWeight.w400,
                ),
              ),
              sizedBoxHeight(143.h),
              Text(
                'On Set Up, Any Fingerprint You Save On The Application May Access Your Account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF373434),
                  fontSize: 15.sp,
                  fontFamily: 'AvenirNextCyr',
                  fontWeight: FontWeight.w400,
                ),
              ),
              sizedBoxHeight(20.h),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Text(
                  'Cancel',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFEF2B7B),
                    fontSize: 18.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              sizedBoxHeight(27.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: commonNextButton("Continue", onTap: () {
                  _checkBio();
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
