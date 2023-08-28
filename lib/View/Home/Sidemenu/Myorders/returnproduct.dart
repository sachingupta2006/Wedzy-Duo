import 'package:dropdown_button2/dropdown_button2.dart';
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

class Returnorder extends StatefulWidget {
  const Returnorder({super.key});

  @override
  State<Returnorder> createState() => _ReturnorderState();
}

class _ReturnorderState extends State<Returnorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBarDynamic(
          titleTxt: "My orders", preferredSize: Size.fromHeight(50)),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 26.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textblack_15w400("Order ID - 5778654"),
            sizedBoxHeight(6.h),
            Container(
              width: double.infinity,
              height: 170.h,
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
                            textBlack_14_400("Add ons: Necklace"),
                            sizedBoxHeight(6.h),
                            textBlack_14_400("₹ 20,000")
                          ],
                        ),
                        sizedBoxWidth(40.w),
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
                  sizedBoxHeight(10.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 9.w),
                    child: Container(
                      width: double.infinity,
                      height: 47,
                      decoration: ShapeDecoration(
                        color: Color(0xFFFEF3F8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          textEE3764_14w400("Delivered at 5 May, 10.30 AM")
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            sizedBoxHeight(24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textBlack_14_400("Returned QTY - 1"),
                Row(
                  children: [
                    SvgPicture.asset("assets/svg/info.svg"),
                    sizedBoxWidth(5.w),
                    textEF2B2B_14w400("View return policy")
                  ],
                )
              ],
            ),
            sizedBoxHeight(15.h),
            textBlack16w400("Return Request Details"),
            sizedBoxHeight(15.h),
            text373737_14w400("Reason for return"),
            sizedBoxHeight(10.h),
            ReturnDropdownBtn(
                hint: "Select reason",
                items: ["Item defective", "Different item received"]),
            sizedBoxHeight(12.h),
            text373737_14w400("More details"),
            sizedBoxHeight(4.h),
            CustomFormContainer(
              hintText: "Lorem ipsum dolor sit amet consecture",
            ),
            sizedBoxHeight(80.h),
            commonNextButton(
              "Continue",
              onTap: () {
                Get.back();
              },
            )
          ],
        ),
      )),
    );
  }
}

class ReturnDropdownBtn extends StatefulWidget {
  const ReturnDropdownBtn({
    required this.hint,
    required this.items,
    this.isEnabled = true,
    this.onItemSelected,
    bool showAddButton = false,
    super.key,
  });
  final String hint;
  final List<String>? items;
  final void Function(String)? onItemSelected;
  final bool isEnabled;
  @override
  State<ReturnDropdownBtn> createState() => _ReturnDropdownBtnState();
}

class _ReturnDropdownBtnState extends State<ReturnDropdownBtn> {
  late String label;
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        hint: Row(
          children: [
            SizedBox(
              width: 4,
            ),
            Expanded(
              child: Text(
                widget.hint,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        items: widget.items!
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 18,
                      //fontWeight: FontWeight.bold,
                      color: Color(0xFF000000),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
            .toList(),
        value: selectedValue,
        onChanged: (value) {
          setState(() {
            selectedValue = value as String;
          });
        },
        buttonStyleData: ButtonStyleData(
          height: 50.h,
          width: double.infinity,
          padding: const EdgeInsets.only(left: 14, right: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Color(0xFFFEF3F8),
            ),
            color: Color(0xFFFEF3F8),
          ),
          elevation: 0,
        ),
        iconStyleData: IconStyleData(
          icon: Icon(
            Icons.keyboard_arrow_down,
          ),
          iconSize: 23.sp,
          iconEnabledColor: AppColors.buttoncolour,
          iconDisabledColor: AppColors.buttoncolour,
        ),
        dropdownStyleData: DropdownStyleData(
          maxHeight: 200,

          padding: null,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Color(0xffCCCCCC),
            ),
            color: AppColors.white,
          ),
          elevation: 1,
          // offset: const Offset(-20, 0),
          scrollbarTheme: ScrollbarThemeData(
            radius: const Radius.circular(40),
            thickness: MaterialStateProperty.all<double>(6),
            thumbVisibility: MaterialStateProperty.all<bool>(true),
          ),
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 40,
          padding: EdgeInsets.only(left: 14, right: 14),
        ),
      ),
    );
  }
}
