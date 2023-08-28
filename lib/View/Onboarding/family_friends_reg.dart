import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wedzy_duo/Routes/route_name.dart';
import 'package:wedzy_duo/Utils/Common/sized_box.dart';
import 'package:wedzy_duo/Utils/Common/texts.dart';
import 'package:wedzy_duo/Utils/Widgets/common_appbar_dynamic.dart';
import 'package:wedzy_duo/Utils/Widgets/common_next_button.dart';
import 'package:wedzy_duo/Utils/Widgets/custom_form_container.dart';

class FamilyFriendsReg extends StatelessWidget {
  const FamilyFriendsReg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: commonNextButton(
        'Next',
        margin: 16.w,
        onTap: () => Get.toNamed(RouteName.familyReg2),
      ),
      appBar: const CustomAppBarDynamic(
          titleTxt: '', preferredSize: Size.fromHeight(50)),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sizedBoxHeight(30.h),
            Center(
                child: textBlack20w700center(
                    'Let’s Connect You To Your\nDestination')),
            Center(child: text70707016w400('Enter Wedding Code')),
            sizedBoxHeight(20.h),
            textBlack15w400('Enter Code'),
            sizedBoxHeight(5.h),
            const CustomFormContainer(
              txtinptype: TextInputType.number,
            )
          ],
        ),
      ),
    );
  }
}
