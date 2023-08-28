import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:wedzy_duo/Utils/Common/sized_box.dart';
import 'package:wedzy_duo/Utils/Common/texts.dart';
import 'package:wedzy_duo/Utils/Common/themedata.dart';
import 'package:wedzy_duo/Utils/Widgets/common_appbar_dynamic.dart';

class WeddingCalendar extends StatefulWidget {
  const WeddingCalendar({super.key});

  @override
  State<WeddingCalendar> createState() => _WeddingCalendarState();
}

class _WeddingCalendarState extends State<WeddingCalendar> {
  late CalendarController _calendarController;
  bool check1visible = false;
  bool check2visible = false;

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBarDynamic(
          titleTxt: 'Wedding Calendar',
          preferredSize: const Size.fromHeight(50)),
      body: SingleChildScrollView(
        // physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SfCalendar(
              view: CalendarView.month,
              firstDayOfWeek: 1,
              cellBorderColor: AppColors.white,
              todayHighlightColor: AppColors.buttoncolour,
              todayTextStyle: const TextStyle(color: AppColors.white),
              controller: _calendarController,
              showNavigationArrow: true,
              allowViewNavigation: true,
              monthViewSettings: const MonthViewSettings(),
              timeSlotViewSettings: const TimeSlotViewSettings(
                  minimumAppointmentDuration: Duration(minutes: 60)),
            ),
            sizedBoxHeight(13.h),
            Container(
              width: double.infinity,
              height: 103,
              decoration: ShapeDecoration(
                color: Color(0xFFFEF3F8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13.84),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(child: textbuutoncolor_14w400("Thu Apr 5 (Today)")),
                    sizedBoxHeight(10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        text1E274214w700("15 : 30"),
                        sizedBoxWidth(17.w),
                        SvgPicture.asset("assets/svg/Ellipse 170.svg"),
                        sizedBoxWidth(12.w),
                        text1E274216w400("Meeting with Caterer"),
                      ],
                    ),
                    sizedBoxHeight(8.h),
                    Padding(
                      padding: EdgeInsets.only(left: 48.w, right: 56.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          sizedBoxWidth(4.w),
                          text1E274214w700("18 : 30"),
                          sizedBoxWidth(17.w),
                          SvgPicture.asset("assets/svg/Ellipse 170.svg"),
                          sizedBoxWidth(13.w),
                          text1E274216w400("Payment to Florist"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            sizedBoxHeight(24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                textBlack_14_400("This month"),
              ],
            ),
            sizedBoxHeight(11.h),
            Container(
              width: double.infinity,
              height: 70,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.10, color: Color(0xFFC3C3C3)),
                  borderRadius: BorderRadius.circular(9),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F858585),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 11.w, top: 11.h, bottom: 11.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 24.w,
                      height: 22.h,
                      child: Checkbox(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side:
                            BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                        activeColor: const Color(0xffEF2B7B),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          // side: BorderSide(color: Color(0xffEF2B7B))
                        ),
                        value: check1visible,
                        onChanged: (value) {
                          setState(() {
                            check1visible = value!;
                          });
                        },
                      ),
                    ),
                    sizedBoxWidth(30.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textBlack16w400("Book Florist"),
                        sizedBoxHeight(7.h),
                        text84848414400("15 April, Sunday"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            sizedBoxHeight(18.h),
            Container(
              width: double.infinity,
              height: 70,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.10, color: Color(0xFFC3C3C3)),
                  borderRadius: BorderRadius.circular(9),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F858585),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 11.w, top: 11.h, bottom: 11.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 24.w,
                      height: 22.h,
                      child: Checkbox(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side:
                            BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                        activeColor: const Color(0xffEF2B7B),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          // side: BorderSide(color: Color(0xffEF2B7B))
                        ),
                        value: check2visible,
                        onChanged: (value) {
                          setState(() {
                            check2visible = value!;
                          });
                        },
                      ),
                    ),
                    sizedBoxWidth(30.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textBlack16w400("Finalise Caterer"),
                        sizedBoxHeight(7.h),
                        text84848414400("20 April, Friday"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            sizedBoxHeight(50.h),
          ],
        ),
      ),
    );
  }

  buildcontentdeletedialog(context) {
    return showDialog(
      context: context,
      builder: (context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AlertDialog(
            insetPadding: const EdgeInsets.symmetric(horizontal: 16),
            backgroundColor:
                Get.isDarkMode ? Colors.black : const Color(0XFFFFFFFF),
            //contentPadding: EdgeInsets.fromLTRB(96, 32, 96, 28),
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              side: BorderSide(
                  color:
                      Get.isDarkMode ? Colors.grey : const Color(0XFFFFFFFF)),
            ),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedBoxHeight(17.h),
                Align(
                  alignment: Alignment.center,
                  child: text373434_18w400('Are you sure you want delete?'),
                ),
                sizedBoxHeight(21.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          width: 117.w,
                          height: 36.h,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFEF2B7B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              textWhite15w700('Yes'),
                            ],
                          ),
                        )),
                    sizedBoxWidth(28.w),
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          width: 117.w,
                          height: 36.h,
                          decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 0.50, color: Color(0xFFEF2B7B)),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              textEF2B2B_15w700('No'),
                            ],
                          ),
                        )),
                  ],
                ),
                sizedBoxHeight(17.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
