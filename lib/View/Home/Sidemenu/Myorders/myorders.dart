import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wedzy_duo/Routes/route_name.dart';
import 'package:wedzy_duo/Utils/Common/sized_box.dart';
import 'package:wedzy_duo/Utils/Common/texts.dart';
import 'package:wedzy_duo/Utils/Common/themedata.dart';
import 'package:wedzy_duo/Utils/Widgets/common_appbar_dynamic.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: AppColors.white,
          appBar: CustomAppBarDynamic(
            titleTxt: "My orders",
            preferredSize: Size.fromHeight(90),
            //  backArrow: true,
            useCustomWidget: true,
            customWidget: Stack(
              children: [
                TabBar(
                    indicatorColor: AppColors.buttoncolour,
                    indicatorWeight: 2.5.h,
                    labelPadding: EdgeInsets.only(bottom: 12.h),
                    tabs: [
                      textBlack16w400("Completed"),
                      textBlack16w400("Ongoing"),
                    ]),
                Positioned(
                    left: 0,
                    right: 0,
                    bottom: -8.h,
                    child: const Divider(
                      thickness: 0.25,
                      color: AppColors.buttoncolour,
                    ))
              ],
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TabBarView(children: [tab1(), tab2()]),
          ),
        ));
  }

  Widget tab1() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 0.w, vertical: 15.h),
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textBlack15w400("Order ID - 5778654"),
          sizedBoxHeight(4.h),
          completed(),
          sizedBoxHeight(20.h),
          textBlack15w400("Order ID - 5778654"),
          sizedBoxHeight(4.h),
          completed(),
          sizedBoxHeight(20.h),
          textBlack15w400("Order ID - 5778654"),
          sizedBoxHeight(4.h),
          completed(),
          sizedBoxHeight(20.h),
        ],
      ),
    );
  }

  Widget tab2() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 0.w, vertical: 15.h),
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textblack_15w400("Order ID - 5778654"),
          sizedBoxHeight(6.h),
          Container(
            width: double.infinity,
            height: 356.h,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 0.15, color: Color(0xFFCFCFCF)),
                borderRadius: BorderRadius.circular(5),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x3F7B7B7B),
                  blurRadius: 4,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 9.w, top: 9.h, right: 9.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 83,
                        height: 72,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/png/completed.png"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                      sizedBoxWidth(15.w),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          textBlack16w400("Necklace"),
                          sizedBoxHeight(6.h),
                          textBlack_14_400("Qyt: 1"),
                          sizedBoxHeight(6.h),
                          textBlack_14_400("₹ 20,000")
                        ],
                      ),
                      sizedBoxWidth(19.w),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset("assets/svg/star.svg"),
                          sizedBoxWidth(3.w),
                          text7070770_14w400("(4.5)")
                        ],
                      )
                    ],
                  ),
                ),
                sizedBoxHeight(16.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset("assets/svg/Ellipse 1311.svg"),
                          Dash(
                              direction: Axis.vertical,
                              length: 25,
                              dashLength: 49,
                              dashGap: 0,
                              dashColor: Color(0XFF0E5F02)),
                          SvgPicture.asset("assets/svg/ellipsewhite.svg"),
                          Dash(
                              direction: Axis.vertical,
                              length: 25,
                              dashLength: 49,
                              dashGap: 0,
                              dashColor: Color(0xFFD9D9D9)),
                          SvgPicture.asset("assets/svg/ellipsewhite.svg"),
                          Dash(
                              direction: Axis.vertical,
                              length: 25,
                              dashLength: 49,
                              dashGap: 0,
                              dashColor: Color(0xFFD9D9D9)),
                          SvgPicture.asset("assets/svg/ellipsewhite.svg"),
                        ],
                      ),
                      sizedBoxWidth(18.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          textBlack_14_400("Ordered"),
                          text535353_14w400("Sun, 14th Oct 23"),
                          sizedBoxHeight(24.h),
                          text535353_14w400("Packed"),
                          text535353_14w400("Expected by Sun, 21st Oct 23"),
                          sizedBoxHeight(26.h),
                          text535353_14w400("Shipped"),
                          text535353_14w400("Expected by Sun, 21st Oct 23"),
                          sizedBoxHeight(27.h),
                          text535353_14w400("Delivery"),
                          text535353_14w400("Expected by Sun, 21st Oct 23"),
                        ],
                      )
                    ],
                  ),
                ),
                sizedBoxHeight(21.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9.w),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/svg/Ellipse 1308.svg"),
                      sizedBoxWidth(5.w),
                      InkWell(
                          onTap: () {
                            Get.toNamed(RouteName.cancelorder);
                          },
                          child: text373434_14w700("Cancel product")),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget completed() {
    return Container(
      width: double.infinity,
      height: 155.h,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.15, color: Color(0xFFCFCFCF)),
          borderRadius: BorderRadius.circular(5),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x3F7B7B7B),
            blurRadius: 4,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 9.w, top: 9.h, right: 9.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 83,
                  height: 72,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/png/completed.png"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
                sizedBoxWidth(15.w),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textBlack16w400("Necklace"),
                    sizedBoxHeight(6.h),
                    textblack16w700("₹ 20,000"),
                    sizedBoxHeight(6.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset("assets/svg/star.svg"),
                        sizedBoxWidth(3.w),
                        text7070770_14w400("(4.5)")
                      ],
                    )
                  ],
                ),
                sizedBoxWidth(70.w),
                Container(
                  width: 67,
                  height: 29,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF05E90),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.50),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [textWhite_14_400("Qty:- 1")],
                  ),
                ),
              ],
            ),
          ),
          sizedBoxHeight(10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.w),
            child: textBlack_14_400("Seller shop- Jewelsrent"),
          ),
          sizedBoxHeight(6.h),
          Divider(
            thickness: 0.50,
            color: Color(0x51F05E90),
          ),
          sizedBoxHeight(4.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.w),
            child: Row(
              children: [
                SvgPicture.asset("assets/svg/Ellipse 1308.svg"),
                sizedBoxWidth(5.w),
                InkWell(
                    onTap: () {
                      Get.toNamed(RouteName.returnorder);
                    },
                    child: text373434_14w700("Return product")),
                sizedBoxWidth(34.w),
                SvgPicture.asset("assets/svg/Ellipsegreen.svg"),
                sizedBoxWidth(5.w),
                InkWell(
                    onTap: () {
                      Get.toNamed(RouteName.returnorder);
                    },
                    child: textFF0EA441_14w700("Exchange product")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
