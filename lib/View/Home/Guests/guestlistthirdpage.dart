import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wedzy_duo/Utils/Common/sized_box.dart';
import 'package:wedzy_duo/Utils/Common/texts.dart';
import 'package:wedzy_duo/Utils/Common/themedata.dart';
import 'package:wedzy_duo/Utils/Widgets/common_appbar_dynamic.dart';
import 'package:wedzy_duo/Utils/Widgets/common_next_button.dart';
import 'package:wedzy_duo/Utils/Widgets/search.dart';

class GuestListThirdPage extends StatefulWidget {
  const GuestListThirdPage({super.key});

  @override
  State<GuestListThirdPage> createState() => _GuestListThirdPageState();
}

class _GuestListThirdPageState extends State<GuestListThirdPage> {
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
            contentPadding: EdgeInsets.fromLTRB(38, 15, 38, 18),
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
                    child: textBlack_20w400("Delete Contact")),
                sizedBoxHeight(4.h),
                Align(
                    alignment: Alignment.center,
                    child: text707070_16w400(
                        "Are you sure you want to delete \n                 the contact?")),
                sizedBoxHeight(20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 109,
                        height: 43,
                        decoration: const ShapeDecoration(
                          color: AppColors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: AppColors.buttoncolour),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [textBlack_14_600("Cancel")],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                        // _data.removeAt();
                      },
                      child: Container(
                        width: 109,
                        height: 43,
                        decoration: ShapeDecoration(
                          color: Color(0xFFEF2B7B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [textWhite16w400("Delete")],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Map<String, String>> _data = [];
  @override
  void initState() {
    // TODO: implement initState
    _data = [
      {
        "image": "assets/png/guestlist1.png",
        "tittle": "Afrid Mulla",
        "subtittle": "98451245748",
      },
      {
        "image": "assets/png/guestlist1.png",
        "tittle": "Afrid Mulla",
        "subtittle": "98451245748",
      },
      {
        "image": "assets/png/guestlist1.png",
        "tittle": "Afrid Mulla",
        "subtittle": "98451245748",
      },
      {
        "image": "assets/png/guestlist1.png",
        "tittle": "Afrid Mulla",
        "subtittle": "98451245748",
      },
      {
        "image": "assets/png/guestlist1.png",
        "tittle": "Afrid Mulla",
        "subtittle": "98451245748",
      },
    ];
    super.initState();
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textBlack18w400("Your family & friends"),
                  textBlack18w400("9/10")
                ],
              ),
              sizedBoxHeight(26.h),
              ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 24.h,
                  );
                },
                shrinkWrap: true,
                itemCount: _data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(_data[index]['image']!),
                      sizedBoxWidth(8.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          textBlack16w400(_data[index]['tittle'] ?? ""),
                          sizedBoxHeight(2.h),
                          text7070770_14w400(_data[index]['subtittle']!)
                        ],
                      ),
                      sizedBoxWidth(167.w),
                      InkWell(
                          onTap: () {
                            setState(() {
                              // _data.removeAt(index);
                              buildguestdialog(context);
                              // Flushbar(
                              //   message: "Guest deleted from list",
                              //   duration: const Duration(seconds: 1),
                              // ).show(context);
                            });
                          },
                          child: SvgPicture.asset(
                            "assets/svg/trash.svg",
                            alignment: Alignment.topCenter,
                          )),
                    ],
                  );
                },
              ),
              sizedBoxHeight(96.h),
              commonNextButton(
                "Add Contacts",
                onTap: () {
                  Get.back();
                },
              )
            ],
          ),
        ),
      )),
    );
  }
}
