import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wedzy_duo/Utils/Common/sized_box.dart';
import 'package:wedzy_duo/Utils/Common/texts.dart';
import 'package:wedzy_duo/Utils/Common/themedata.dart';
import 'package:wedzy_duo/Utils/Widgets/common_appbar_dynamic.dart';
import 'package:wedzy_duo/Utils/Widgets/common_next_button.dart';
import 'package:wedzy_duo/Utils/Widgets/custom_form_container.dart';

class Loans extends StatefulWidget {
  const Loans({super.key});

  @override
  State<Loans> createState() => _LoansState();
}

class _LoansState extends State<Loans> {
  buildloansdialog(context) {
    return showDialog(
      // barrierDismissible: false,
      context: context,
      builder: (context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AlertDialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 16),
            backgroundColor: Get.isDarkMode ? Colors.black : Color(0XFFFFFFFF),
            contentPadding: EdgeInsets.fromLTRB(13, 44, 13, 25),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              side: BorderSide(
                  color: Get.isDarkMode ? Colors.grey : Color(0XFFFFFFFF)),
            ),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                    alignment: Alignment.center,
                    child: textBlack18w400(
                        "Thank you for your response, our \nTeam will get back to you shortly!")),
                sizedBoxHeight(25.h),
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      width: 156,
                      height: 40,
                      decoration: ShapeDecoration(
                        color: Color(0xFFEF2B7B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [textWhite15w700("Back")],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.white,
      appBar: CustomAppBarDynamic(
        titleTxt: "Loans",
        preferredSize: Size.fromHeight(50),
        backArrow: false,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textblack_15w400("Name"),
            sizedBoxHeight(4.h),
            CustomFormContainer(
              hintText: "Enter name",
            ),
            sizedBoxHeight(20.h),
            textblack_15w400("Address"),
            sizedBoxHeight(4.h),
            CustomFormContainer(
              hintText: "Enter address",
            ),
            sizedBoxHeight(20.h),
            textblack_15w400("Phone Number"),
            sizedBoxHeight(4.h),
            CustomFormContainer(
              hintText: "Enter phone number",
            ),
            sizedBoxHeight(20.h),
            textblack_15w400("Income"),
            sizedBoxHeight(4.h),
            CustomFormContainer(
              hintText: "Enter income ",
            ),
            sizedBoxHeight(20.h),
            textblack_15w400("Loan Amount"),
            sizedBoxHeight(4.h),
            CustomFormContainer(
              hintText: "Enter loan amount ",
            ),
            sizedBoxHeight(20.h),
            textblack_15w400("Reason"),
            sizedBoxHeight(4.h),
            CustomFormContainer(
              hintText: "Enter reason",
            ),
            sizedBoxHeight(55.h),
            commonNextButton(
              "Submit Request",
              onTap: () => buildloansdialog(context),
            ),
          ],
        ),
      )),
    );
  }
}
