import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wedzy_duo/Routes/route_name.dart';
import 'package:wedzy_duo/Utils/Common/sized_box.dart';
import 'package:wedzy_duo/Utils/Common/texts.dart';
import 'package:wedzy_duo/Utils/Common/themedata.dart';
import 'package:wedzy_duo/Utils/Widgets/common_appbar_dynamic.dart';
import 'package:wedzy_duo/Utils/Widgets/common_next_button.dart';

class GuestList extends StatefulWidget {
  const GuestList({super.key});

  @override
  State<GuestList> createState() => _GuestListState();
}

class _GuestListState extends State<GuestList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBarDynamic(
        titleTxt: "Guest List",
        preferredSize: Size.fromHeight(50),
        search: false,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textBlack18w400("Add guest count"),
              sizedBoxHeight(8.h),
              text7070770_14w400("Add number of guest attending your wedding"),
              sizedBoxHeight(18.h),
              Container(
                width: 141.w,
                height: 43.h,
                decoration: ShapeDecoration(
                  color: Color(0xFFFEF3F8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12.w),
                      child: text7070770_14w400("Ex: 500"),
                    )
                  ],
                ),
              ),
              sizedBoxHeight(18.h),
              textBlack18w400("Add your loved ones"),
              sizedBoxHeight(8.h),
              text7070770_14w400(
                  "You can add upto 10 close guests who can view, \nlike and comment on your shortlisted vendors"),
              sizedBoxHeight(93.h),
              Center(child: SvgPicture.asset("assets/svg/guestlist1.svg")),
              sizedBoxHeight(13.h),
              Center(child: text707070_18w400("Your guest list is empty")),
              sizedBoxHeight(196.h),
              commonNextButton(
                "Add Contacts",
                onTap: () {
                  Get.toNamed(RouteName.guestlistsecondpage);
                },
              )
            ],
          ),
        ),
      )),
    );
  }
}
