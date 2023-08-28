import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Routes/route_name.dart';
import '../../Utils/Common/sized_box.dart';
import '../../Utils/Common/texts.dart';
import '../../Utils/Widgets/common_appbar_dynamic.dart';
import '../../Utils/Widgets/common_next_button.dart';
import '../../Utils/Widgets/custom_form_container.dart';

class FamilyReg2 extends StatelessWidget {
  const FamilyReg2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: commonNextButton(
        'Next',
        margin: 16.w,
        onTap: () => Get.toNamed(RouteName.familyReg3),
      ),
      appBar: const CustomAppBarDynamic(
          titleTxt: '', preferredSize: Size.fromHeight(50)),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sizedBoxHeight(30.h),
            Center(child: textBlack20w700center('We Want To Know You\nBetter')),
            Center(child: text70707016w400('Enter Your Details')),
            sizedBoxHeight(30.h),
            textBlack15w400('Name'),
            sizedBoxHeight(5.h),
            const CustomFormContainer(),
            sizedBoxHeight(30.h),
            textBlack15w400('Your Relation With Duo'),
            sizedBoxHeight(5.h),
            const CustomFormContainer(),
            sizedBoxHeight(30.h),
            textBlack15w400('Phone Nymber'),
            sizedBoxHeight(5.h),
            const CustomFormContainer(txtinptype: TextInputType.phone),
          ],
        ),
      ),
    );
  }
}
