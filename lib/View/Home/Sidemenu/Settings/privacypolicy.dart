import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wedzy_duo/Routes/route_name.dart';
import 'package:wedzy_duo/Utils/Common/sized_box.dart';
import 'package:wedzy_duo/Utils/Common/texts.dart';
import 'package:wedzy_duo/Utils/Common/themedata.dart';
import 'package:wedzy_duo/Utils/Widgets/common_appbar_dynamic.dart';

class PrivacyDuo extends StatefulWidget {
  const PrivacyDuo({super.key});

  @override
  State<PrivacyDuo> createState() => _PrivacyDuoState();
}

class _PrivacyDuoState extends State<PrivacyDuo> {
  



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBarDynamic(
        titleTxt: "Privacy Policy",
        preferredSize: Size.fromHeight(50),
        search: false,
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedBoxHeight(27.h),
          Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Color(0x7FF05E90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [SvgPicture.asset("assets/svg/privacypolicy.svg")],
              ),
            ),
          ),
          sizedBoxHeight(27.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              'Lorem ipsum dolor sit amet, conse consectetur adipiscing elit, sed do euio eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ulla ullamco laboris nisi ut aliquip ex ea  \n\ncommodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla velit pariatur. Excepteur sint occaecat velit cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\ncommodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla velit pariatur. Excepteur sint occaecat velit cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 15.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      )),
    );
  }
}
