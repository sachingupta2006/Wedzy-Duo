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
import 'package:wedzy_duo/Utils/Widgets/search.dart';

class GuestListSecondPage extends StatefulWidget {
  const GuestListSecondPage({super.key});

  @override
  State<GuestListSecondPage> createState() => _GuestListSecondPageState();
}

class _GuestListSecondPageState extends State<GuestListSecondPage> {
  bool packagcheck1visible = false;

  buildguestdialog(context) {
    return showDialog(
      // barrierDismissible: false,
      context: context,
      builder: (context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AlertDialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 16),
            backgroundColor: Get.isDarkMode ? Colors.black : Color(0XFFFFFFFF),
            contentPadding: EdgeInsets.fromLTRB(19, 21, 19, 34),
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
                  child: Text(
                    'Contacts synced successfully',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                sizedBoxHeight(22.h),
                commonNextButton(
                  "Ok",
                  onTap: () {
                    Get.back();
                    Get.toNamed(RouteName.guestlistthirdpage);
                  },
                ),
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
              sizedBoxHeight(19.h),
              Container(
                width: double.infinity,
                height: 45,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Color(0xFFEF2B7B)),
                    borderRadius: BorderRadius.circular(22.50),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 2.w, top: 11.h, bottom: 11.h),
                  child: TextFormField(
                    textAlign: TextAlign.start,
                    cursorColor: Colors.black,
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontFamily: "AvenirNextCyr",
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 11.h),
                      fillColor: AppColors.white,
                      prefixIcon: SvgPicture.asset(
                        "assets/svg/search.svg",
                        width: 24.w,
                        height: 24.h,
                      ),
                      border: InputBorder.none,
                      hintText: "Search",
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                ),
              ),
              sizedBoxHeight(26.h),
              guestlist(),
              sizedBoxHeight(23.h),
              guestlist(),
              sizedBoxHeight(23.h),
              guestlist(),
              sizedBoxHeight(23.h),
              guestlist(),
              sizedBoxHeight(23.h),
              guestlist(),
              sizedBoxHeight(32.h),
              commonNextButton(
                "Add Contacts",
                onTap: () => buildguestdialog(context),
              )
            ],
          ),
        ),
      )),
    );
  }

  Widget guestlist() {
    var profileBool = false.obs;

    return 
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset("assets/png/guestlist1.png"),
        sizedBoxWidth(8.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textBlack16w400("Afrid Mulla"),
            sizedBoxHeight(2.h),
            text7070770_14w400("98451245748")
          ],
        ),
        sizedBoxWidth(157.w),
        // SizedBox(
        //   width: 24.w,
        //   height: 22.h,
        //   child: Checkbox(
        //     materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        //     side: BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
        //     activeColor: const Color(0xffEF2B7B),
        //     shape: const RoundedRectangleBorder(
        //       borderRadius: BorderRadius.all(Radius.circular(4)),
        //       // side: BorderSide(color: Color(0xffEF2B7B))
        //     ),
        //     value: packagcheck1visible,
        //     onChanged: (value) {
        //       setState(() {
        //         packagcheck1visible = value!;
        //         // pacakge3visible = !pacakge3visible;
        //         // pacakge2visible = !pacakge2visible;
        //         // customvisible = !customvisible;
        //         // packag1visible = true;
        //       });
        //     },
        //   ),
        // )

        GestureDetector(
          onTap: () {
            profileBool.value = !profileBool.value;
          },
          child: Obx(() => Icon(
                profileBool.value
                    ? Icons.check_box
                    : Icons.check_box_outline_blank,
                color: AppColors.buttoncolour,
              )),
        )
      ],
    );
  }
}
