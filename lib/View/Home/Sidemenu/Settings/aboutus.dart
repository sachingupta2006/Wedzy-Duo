import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wedzy_duo/Utils/Common/sized_box.dart';
import 'package:wedzy_duo/Utils/Common/themedata.dart';

class AboutusDuo extends StatefulWidget {
  const AboutusDuo({super.key});

  @override
  State<AboutusDuo> createState() => _AboutusDuoState();
}

class _AboutusDuoState extends State<AboutusDuo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 244,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/png/aboutuscontainer.png"),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                    Colors.grey.withOpacity(0.8),
                    BlendMode.modulate,
                  ),
                ),
                color: Colors.black.withOpacity(0.9),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Container(
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
                          iconSize: 22.spMin,
                        ),
                        sizedBoxWidth(10.w),
                        Text(
                          "About us",
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    sizedBoxHeight(46.h),
                    Text(
                      '“AB APKI NAHI! \nHUMARE BHI \nGHAR KI SHAADI HAI”',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.sp,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
            ),
            // sizedBoxHeight(25.h),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 25.h),
                  child: Text(
                    'Lorem ipsum dolor sit amet, conse consectetur adipiscing elit, sed do euio eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ulla ullamco laboris nisi ut aliquip ex ea  \n\ncommodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla velit pariatur. Excepteur sint occaecat velit cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\ncommodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla velit pariatur. Excepteur sint occaecat velit cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                    style: TextStyle(
                      color: Color(0xFF373434),
                      fontSize: 15.sp,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
