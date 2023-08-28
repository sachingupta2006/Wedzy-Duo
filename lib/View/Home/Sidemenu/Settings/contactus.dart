import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wedzy_duo/Utils/Common/sized_box.dart';
import 'package:wedzy_duo/Utils/Common/themedata.dart';
import 'package:wedzy_duo/Utils/Widgets/common_appbar_dynamic.dart';
import 'package:wedzy_duo/Utils/Widgets/common_next_button.dart';
import 'package:wedzy_duo/Utils/Widgets/custom_form_container.dart';
import '../../../../Utils/Common/texts.dart';

class Contactus extends StatefulWidget {
  const Contactus({super.key});

  @override
  State<Contactus> createState() => _ContactusState();
}

class _ContactusState extends State<Contactus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBarDynamic(
        titleTxt: "Contact Us",
        preferredSize: Size.fromHeight(50),
        search: false,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 47,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFDD0E0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/svg/mail (4).svg"),
                    ],
                  ),
                ),
                sizedBoxWidth(7.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textBlack_14_600("Email"),
                    textBlack_14_400("wedxy@gmail.com")
                  ],
                ),
                sizedBoxWidth(28.w),
                Container(
                  width: 40,
                  height: 47,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFDD0E0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/svg/phone-call (1).svg")
                    ],
                  ),
                ),
                sizedBoxWidth(6.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textBlack_14_400("Phone"),
                    textBlack_14_400("9845784152"),
                  ],
                )
              ],
            ),
            sizedBoxHeight(46.h),
            textBlack_14_400("Name"),
            sizedBoxHeight(4.h),
            const CustomFormContainer(
              hintText: "Enter Name",
            ),
            sizedBoxHeight(17.h),
            textBlack_14_400("Email"),
            sizedBoxHeight(4.h),
            const CustomFormContainer(hintText: "Enter Email"),
            sizedBoxHeight(17.h),
            textBlack_14_400("Message"),
            sizedBoxHeight(4.h),
            SizedBox(
                height: 107.h,
                child: const CustomFormContainer(
                  hintText: "Enter Message",
                  multiLines: true,
                )),
            sizedBoxHeight(146.h),
            commonNextButton(
              "Send",
              onTap: () {},
            ),
          ],
        ),
      )),
    );
  }
}
