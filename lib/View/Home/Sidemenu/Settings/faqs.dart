import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wedzy_duo/Utils/Common/sized_box.dart';
import 'package:wedzy_duo/Utils/Common/texts.dart';
import 'package:wedzy_duo/Utils/Common/themedata.dart';
import 'package:wedzy_duo/Utils/Widgets/common_appbar_dynamic.dart';

class FaqsPage extends StatefulWidget {
  const FaqsPage({super.key});

  @override
  State<FaqsPage> createState() => _FaqsPageState();
}

class _FaqsPageState extends State<FaqsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppBarDynamic(
        titleTxt: "FAQ’s",
        preferredSize: Size.fromHeight(50),
        search: false,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.only(left: 16.w, right: 0.w),
        child: Column(
          children: [
            Stack(
              children: [
                // textBlack20W7000Mon("Your Wedding \nPlanning Guidebook"),
                Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    "assets/png/faqs.png",
                    width: 215,
                    height: 111,
                  ),
                ),
                Positioned(
                    right: 156.w,
                    bottom: 0,
                    top: 40,
                    child: textBlack20W7000Mon(
                        "Your Wedding \nPlanning Guidebook")),
              ],
            ),
            sizedBoxHeight(30.h),
            qwerty('Loans',
                qna: Column(
                  children: [
                    questionAns(),
                    questionAns1(),
                    questionAns2(),
                    questionAns3()
                  ],
                )),
            sizedBoxHeight(14.h),
            qwerty('Rentals',
                qna: Column(
                  children: [questionAns4(), questionAns5(), questionAns6()],
                )),
            sizedBoxHeight(14.h),
            qwerty('Vendors',
                qna: Column(
                  children: [
                    questionAns7(),
                    questionAns8(),
                    questionAns9(),
                    questionAns10()
                  ],
                )),
            sizedBoxHeight(14.h),
            qwerty('Budget',
                qna: Column(
                  children: [
                    questionAns11(),
                    questionAns12(),
                    questionAns13(),
                    questionAns14()
                  ],
                )),
            sizedBoxHeight(20.h),
          ],
        ),
      )),
    );
  }
}

Widget qwerty(String title, {Widget? qna}) {
  var visibleBool = false.obs;
  return Obx(
    () => Visibility(
        visible: visibleBool.value,
        replacement: Padding(
          padding: EdgeInsets.only(right: 16.w),
          child: GestureDetector(
            onTap: () {
              visibleBool.value = true;
            },
            child: Container(
              width: double.infinity,
              height: 70,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x3F828282),
                    blurRadius: 4,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.w, vertical: 17.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SvgPicture.asset("assets/svg/pinkarrowdown.svg"

                        // size: 25.sp,
                        // color: widget.isExpanded ? Colors.black : Colors.white,
                        ),
                  ],
                ),
              ),
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(right: 16.w, bottom: 20.h),
          child: Container(
            width: double.infinity,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              shadows: const [
                BoxShadow(
                    color: Color(0x3F828282),
                    blurRadius: 4,
                    offset: Offset(0, 1))
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    visibleBool.value = false;
                  },
                  child: Container(
                    width: double.infinity,
                    height: 65,
                    decoration: const ShapeDecoration(
                      color: Color(0xFFF05E90),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      shadows: [
                        BoxShadow(
                            color: Color(0x3F828282),
                            blurRadius: 4,
                            offset: Offset(0, 1))
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 21.w, vertical: 17.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontFamily: 'AvenirNextCyr',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SvgPicture.asset(
                            "assets/svg/whitearrowup.svg",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10),
                  child: qna,
                )
              ],
            ),
          ),
        )),
  );

  // Padding(
  //   padding: EdgeInsets.only(right: 16.w),
  //   child: Accordion(
  //       maxOpenSections: 4,
  //       headerBackgroundColorOpened: Color(0XFFF05E90),
  //       // headerPadding: EdgeInsets.symmetric(vertical: 10),
  //       scaleWhenAnimating: true,
  //       openAndCloseAnimation: true,
  //       headerPadding:
  //           const EdgeInsets.symmetric(vertical: 14, horizontal: 15),
  //       sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
  //       sectionClosingHapticFeedback: SectionHapticFeedback.light,
  //       children: [
  //         AccordionSection(
  //           rightIcon: SvgPicture.asset(
  //             widget.isExpanded
  //                 ? "assets/svg/pinkarrowdown.svg"
  //                 : "assets/svg/whitearrowup.svg",

  //             // size: 25.sp,
  //             color: widget.isExpanded ? Colors.black : Colors.white,
  //           ),
  //           isOpen: true,
  //           // leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
  //           headerBackgroundColor: Colors.grey[300],
  //           contentBorderColor: Colors.grey[300],
  //           headerBackgroundColorOpened: Color(0XFFF05E90),
  //           header: Text(
  //             'Loans',
  //             style: TextStyle(
  //               color: widget.isExpanded ? Colors.white : Colors.black,
  //               fontSize: 16.sp,
  //               fontFamily: 'AvenirNextCyr',
  //               fontWeight: FontWeight.w400,
  //             ),
  //           ),
  //           content: Column(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               textBlack16w400(
  //                   "What types of loans are available for wedding planning through the app?"),
  //               sizedBoxHeight(8.h),
  //               textBlack_14_400(
  //                   "The app offers personal loans specifically tailored for wedding planning expenses. These loans are unsecured and can be used to cover various wedding-related costs.\n"),
  //               sizedBoxWidth(19.h),
  //               textBlack16w400(
  //                   "How can I apply for a wedding planning loan using the app?"),
  //               sizedBoxHeight(8.h),
  //               textBlack_14_400(
  //                   "Applying for a wedding planning loan is easy through the app. Simply fill out the online application form with your personal and financial details, and submit the necessary documents for verification.\n"),
  //               sizedBoxWidth(19.h),
  //               textBlack16w400(
  //                   "What is the typical loan amount offered for wedding planning purposes?"),
  //               sizedBoxHeight(8.h),
  //               textBlack_14_400(
  //                   "The loan amount offered through the app can vary depending on the lender, your creditworthiness, and other factors. Commonly, loan amounts range from ₹1,000 to ₹50,000.\n"),
  //               sizedBoxWidth(19.h),
  //               textBlack16w400(
  //                   "What are the interest rates and repayment terms for wedding planning loans?"),
  //               sizedBoxHeight(8.h),
  //               textBlack_14_400(
  //                   "Interest rates and repayment terms depend on the lender. Interest rates may be fixed or variable, and repayment terms usually range from 1 to 5 years."),
  //               sizedBoxWidth(19.h),
  //             ],
  //           ),

  //           contentHorizontalPadding: 20,
  //           contentBorderWidth: 1,
  //           // onOpenSection: () => print('onOpenSection ...'),
  //           // onCloseSection: () => print('onCloseSection ...'),
  //         ),
  //       ]),
  // );

  // Padding(
  //   padding: EdgeInsets.only(right: 16.w),
  //   child: Container(
  //     width: double.infinity,
  //     decoration: ShapeDecoration(
  //       shadows: [
  //         BoxShadow(
  //           color: Color(0x3F828282),
  //           blurRadius: 4,
  //           offset: Offset(0, 1),
  //           spreadRadius: 0,
  //         )
  //       ],
  //       // border:
  //       //     widget.isExpanded ? Border.all(color: const Color(0xffCCCCCC)) : null,
  //       color: widget.isExpanded ? AppColors.white : AppColors.white,
  //       // borderRadius: BorderRadius.circular(10.r),
  //       shape: RoundedRectangleBorder(
  //         side: BorderSide(
  //             color: widget.isExpanded
  //                 ? const Color(0xffCCCCCC)
  //                 : Color(0xffCCCCCC)),
  //         borderRadius: BorderRadius.circular(10.r),
  //       ),
  //     ),
  //     child: ExpansionTile(
  //         tilePadding: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),

  //         // childrenPadding: EdgeInsets.only(left: 8.w, right: 8.w, bottom: 15.w),
  //         initiallyExpanded: widget.isExpanded,
  //         onExpansionChanged: (bool expanding) {
  //           setState(() {
  //             widget.isExpanded = expanding;
  //           });
  //         },
  //         trailing: sizedBoxWidth(0),
  //         // SvgPicture.asset(
  //         //   widget.isExpanded
  //         //       ? "assets/svg/whitearrowup.svg"
  //         //       : "assets/svg/pinkarrowdown.svg",
  //         //   // size: 25.sp,
  //         //   // color: widget.isExpanded ? Colors.black : Colors.black,
  //         // ),
  //         title: Container(
  //           // margin: ,

  //           padding: EdgeInsets.zero,
  //           width: double.infinity,
  //           height: 68.h,
  //           // color:
  //           //     widget.isExpanded ? AppColors.buttoncolour : AppColors.white,
  //           decoration: ShapeDecoration(
  //             // shadows: [
  //             //   BoxShadow(
  //             //     color: Color(0x3F828282),
  //             //     blurRadius: 4,
  //             //     offset: Offset(0, 1),
  //             //     spreadRadius: 0,
  //             //   )
  //             // ],
  //             // border:
  //             //     widget.isExpanded ? Border.all(color: const Color(0xffCCCCCC)) : null,
  //             color: widget.isExpanded ? Color(0XFFF05E90) : AppColors.white,
  //             // borderRadius: BorderRadius.circular(10.r),
  //             shape: RoundedRectangleBorder(
  //               // side: BorderSide(
  //               //     color: widget.isExpanded
  //               //         ? const Color(0xffCCCCCC)
  //               //         : Color(0xffCCCCCC)),
  //               borderRadius: BorderRadius.only(
  //                   topLeft: Radius.circular(10),
  //                   topRight: Radius.circular(10)),
  //             ),
  //           ),
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             crossAxisAlignment: CrossAxisAlignment.center,
  //             children: [
  //               Text(
  //                 'Loans',
  //                 style: TextStyle(
  //                   color: widget.isExpanded ? Colors.white : Colors.black,
  //                   fontSize: 16.sp,
  //                   fontFamily: 'AvenirNextCyr',
  //                   fontWeight: FontWeight.w400,
  //                 ),
  //               ),
  //               SvgPicture.asset(
  //                 widget.isExpanded
  //                     ? "assets/svg/whitearrowup.svg"
  //                     : "assets/svg/pinkarrowdown.svg",
  //                 // size: 25.sp,
  //                 // color: widget.isExpanded ? Colors.black : Colors.black,
  //               ),
  //             ],
  //           ),
  //         ),
  //         children: <Widget>[
  //           Column(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               textBlack16w400(
  //                   "What types of loans are available for wedding planning through the app?"),
  //               sizedBoxHeight(8.h),
  //               textBlack_14_400(
  //                   "The app offers personal loans specifically tailored for wedding planning expenses. These loans are unsecured and can be used to cover various wedding-related costs."),
  //               sizedBoxWidth(19.h),
  //             ],
  //           )
  //         ]),
  //   ),
  // );
}

Widget questionAns() {
  return Column(
    children: [
      sizedBoxHeight(20.h),
      textBlack16w400(
          "What types of loans are available for wedding planning through the app?"),
      sizedBoxHeight(8.h),
      textBlack_14_400(
          "The app offers personal loans specifically tailored for wedding planning expenses. These loans are unsecured and can be used to cover various wedding-related costs."),
      sizedBoxWidth(19.h)
    ],
  );
}

Widget questionAns1() {
  return Column(
    children: [
      sizedBoxHeight(20.h),
      textBlack16w400(
          "How can I apply for a wedding planning loan using the app?"),
      sizedBoxHeight(8.h),
      textBlack_14_400(
          "Applying for a wedding planning loan is easy through the app. Simply fill out the online application form with your personal and financial details, and submit the necessary documents for verification."),
      sizedBoxWidth(19.h)
    ],
  );
}

Widget questionAns2() {
  return Column(
    children: [
      sizedBoxHeight(20.h),
      textBlack16w400(
          "What is the typical loan amount offered for wedding planning purposes?"),
      sizedBoxHeight(8.h),
      textBlack_14_400(
          "The loan amount offered through the app can vary depending on the lender, your creditworthiness, and other factors. Commonly, loan amounts range from ₹1,000 to ₹50,000."),
      sizedBoxWidth(19.h)
    ],
  );
}

Widget questionAns3() {
  return Column(
    children: [
      sizedBoxHeight(20.h),
      textBlack16w400(
          "What are the interest rates and repayment terms for wedding planning loans?"),
      sizedBoxHeight(8.h),
      textBlack_14_400(
          "Interest rates and repayment terms depend on the lender. Interest rates may be fixed or variable, and repayment terms usually range from 1 to 5 years."),
      sizedBoxWidth(19.h)
    ],
  );
}

Widget questionAns4() {
  return Column(
    children: [
      sizedBoxHeight(20.h),
      textBlack16w400(
          "What types of rentals are available for weddings through the app?"),
      sizedBoxHeight(8.h),
      textBlack_14_400(
          "The app offers a wide range of rental options, including wedding venue rentals, furniture and decor rentals, audio and visual equipment rentals, and even attire and accessory rentals."),
      sizedBoxWidth(19.h)
    ],
  );
}

Widget questionAns5() {
  return Column(
    children: [
      sizedBoxHeight(20.h),
      textBlack16w400("How can I rent wedding items through the app?"),
      sizedBoxHeight(8.h),
      textBlack_14_400(
          "Renting wedding items through the app is simple. Users can browse the rental inventory, select the desired items, specify the rental duration, and complete the booking process online."),
      sizedBoxWidth(19.h)
    ],
  );
}

Widget questionAns6() {
  return Column(
    children: [
      sizedBoxHeight(20.h),
      textBlack16w400(
          "Can I view the available rental items in person before making a decision?"),
      sizedBoxHeight(8.h),
      textBlack_14_400(
          "Some rental vendors may offer showrooms or allow for in-person visits to view their rental inventory. Others may provide virtual tours or detailed images on the app to help with the decision-making process."),
      sizedBoxWidth(19.h)
    ],
  );
}

Widget questionAns7() {
  return Column(
    children: [
      sizedBoxHeight(20.h),
      textBlack16w400("How do I find and choose vendors through the app?"),
      sizedBoxHeight(8.h),
      textBlack_14_400(
          "The app typically provides a search feature that allows users to find vendors based on their location, services offered, and user ratings. After reviewing profiles and portfolios, users can choose the best-suited vendors for their wedding."),
      sizedBoxWidth(19.h)
    ],
  );
}

Widget questionAns8() {
  return Column(
    children: [
      sizedBoxHeight(20.h),
      textBlack16w400("Are the vendors on the app verified and reputable?"),
      sizedBoxHeight(8.h),
      textBlack_14_400(
          "Yes, the app strives to partner with reputable vendors. Vendor verification and review processes are often in place to maintain quality and reliability."),
      sizedBoxWidth(19.h)
    ],
  );
}

Widget questionAns9() {
  return Column(
    children: [
      sizedBoxHeight(20.h),
      textBlack16w400(
          "Can I communicate directly with vendors through the app?"),
      sizedBoxHeight(8.h),
      textBlack_14_400(
          "Yes, the app usually facilitates direct communication between couples and vendors, enabling them to discuss services, pricing, and other details."),
      sizedBoxWidth(19.h)
    ],
  );
}

Widget questionAns10() {
  return Column(
    children: [
      sizedBoxHeight(20.h),
      textBlack16w400(
          "Are there vendor packages available for various wedding budgets?"),
      sizedBoxHeight(8.h),
      textBlack_14_400(
          "Many vendors on the app offer different packages to accommodate various wedding budgets, allowing couples to choose services that align with their financial plan."),
      sizedBoxWidth(19.h)
    ],
  );
}

Widget questionAns11() {
  return Column(
    children: [
      sizedBoxHeight(20.h),
      textBlack16w400(
          "How can the app assist in creating and managing my wedding budget?"),
      sizedBoxHeight(8.h),
      textBlack_14_400(
          "The app typically provides a budget planning tool that allows users to input their estimated expenses, set budget limits for each category, and track actual spending throughout the planning process."),
      sizedBoxWidth(19.h)
    ],
  );
}

Widget questionAns12() {
  return Column(
    children: [
      sizedBoxHeight(20.h),
      textBlack16w400(
          "Can I set a total budget for my wedding, including all expenses, through the app?"),
      sizedBoxHeight(8.h),
      textBlack_14_400(
          "Yes, users can set an overall budget for the wedding on the app and allocate funds to various categories such as venue, catering, decor, etc."),
      sizedBoxWidth(19.h)
    ],
  );
}

Widget questionAns13() {
  return Column(
    children: [
      sizedBoxHeight(20.h),
      textBlack16w400(
          "Are there pre-set budget templates or recommendations based on average wedding costs?"),
      sizedBoxHeight(8.h),
      textBlack_14_400(
          "Many apps offer pre-set budget templates and average cost recommendations for different wedding sizes and styles to serve as a starting point for users."),
      sizedBoxWidth(19.h)
    ],
  );
}

Widget questionAns14() {
  return Column(
    children: [
      sizedBoxHeight(20.h),
      textBlack16w400(
          "Does the app provide insights into common cost-saving strategies and tips for wedding planning?"),
      sizedBoxHeight(8.h),
      textBlack_14_400(
          "Does the app provide insights into common cost-saving strategies and tips for wedding planning?"),
      sizedBoxWidth(19.h)
    ],
  );
}
