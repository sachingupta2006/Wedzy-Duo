import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wedzy_duo/Utils/Common/sized_box.dart';
import 'package:wedzy_duo/Utils/Common/texts.dart';
import 'package:wedzy_duo/Utils/Common/themedata.dart';
import 'package:wedzy_duo/Utils/Widgets/common_appbar_dynamic.dart';
import '../../../Routes/route_name.dart';
import '../../../Utils/Widgets/common_next_button.dart';
import 'package:intl/intl.dart';

RxString profilePicPath = "".obs;
var datecontroller = '25 December 2023'.obs;
DateTime? _selectedDate;
TextEditingController nameController =
    TextEditingController(text: 'Mokshada keasrkar');
TextEditingController hasTagController = TextEditingController(text: '#Moksha');
var nameValue = 'Mokshada keasrkar'.obs;
var hasTagValue = '#Moksha'.obs;
var phoneValue = '8456789456'.obs;
var emailValue = 'mokshada@gamil.com'.obs;

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    var edit = false.obs;
    TextEditingController emailController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBarDynamic(
          titleTxt: 'Profile',
          preferredSize: const Size.fromHeight(50),
          suffixWidget: Obx(
            () => GestureDetector(
              onTap: () {
                edit.value = !edit.value;
                phoneValue.value = phoneController.text;
                emailValue.value = emailController.text;
              },
              child: Container(
                height: 29.h,
                margin: EdgeInsets.only(bottom: 10.h, top: 10.h, right: 16.w),
                padding:
                    EdgeInsets.symmetric(horizontal: edit.value ? 15.w : 8.w),
                decoration: const ShapeDecoration(
                  color: Color(0xFFEF2B7B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(4),
                      bottomLeft: Radius.circular(4),
                    ),
                  ),
                ),
                child: edit.value
                    ? Center(child: textWhite12w500('Save'))
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.edit_note,
                              size: 20.h, color: Colors.white),
                          textWhite12w500('Edit')
                        ],
                      ),
              ),
            ),
          )),
      body: Obx(
        () => SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: edit.value
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Obx(() => CircleAvatar(
                              backgroundColor: AppColors.white,
                              radius: 48.w,
                              child: profilePicPath.value != ''
                                  ? ClipOval(
                                      child: Image(
                                          image: FileImage(
                                              File(profilePicPath.value)),
                                          fit: BoxFit.fill))
                                  : Image.asset('assets/png/dpBig.png',
                                      fit: BoxFit.fill))),
                          GestureDetector(
                            onTap: () => showDialog(
                                context: context,
                                builder: (context) => changeImage()),
                            child: CircleAvatar(
                              radius: 14.h,
                              backgroundColor: AppColors.buttoncolour,
                              child: Icon(Icons.camera_alt_outlined,
                                  color: Colors.white, size: 18.h),
                            ),
                          )
                        ],
                      ),
                    ),
                    sizedBoxHeight(10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        textBlack18w400(nameValue.value),
                        sizedBoxWidth(5.w),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) => editNameAlert(),
                            );
                          },
                          child: Icon(Icons.edit_outlined,
                              size: 20.h, color: AppColors.buttoncolour),
                        )
                      ],
                    ),
                    sizedBoxHeight(10.h),
                    Center(child: text7070770_14w400(hasTagValue.value)),
                    sizedBoxHeight(30.h),
                    GestureDetector(
                      onTap: () {
                        _presentDatePicker(context);
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          textBlack16w400('Wedding Day'),
                          sizedBoxWidth(10.w),
                          RotatedBox(
                              quarterTurns: 3,
                              child: Icon(Icons.arrow_back_ios, size: 15.h))
                        ],
                      ),
                    ),
                    sizedBoxHeight(5.h),
                    Obx(() => text7A7A7A_16w400(datecontroller.value)),
                    sizedBoxHeight(25.h),
                    textBlack_14_400('Email Address'),
                    sizedBoxHeight(15.h),
                    TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: 'Add Email',
                            hintStyle: TextStyle(
                                color: const Color(0xFF8D8D8D),
                                fontSize: 14.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w400))),
                    sizedBoxHeight(25.h),
                    textBlack_14_400('Phone Number'),
                    sizedBoxHeight(15.h),
                    TextFormField(
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            hintText: 'Add Phone',
                            hintStyle: TextStyle(
                                color: const Color(0xFF8D8D8D),
                                fontSize: 14.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w400))),
                    sizedBoxHeight(30.h),
                    GestureDetector(
                      onTap: () {
                        print('object');
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  textBlack14w500(
                                      'Are you sure you want to logout?'),
                                  sizedBoxHeight(20.h),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            Get.back();
                                          },
                                          child: text373434_14w500('Cancel')),
                                      sizedBoxWidth(20.w),
                                      InkWell(
                                          onTap: () {
                                            Get.back();
                                            Get.back();
                                            Get.toNamed(RouteName.loginscreen);
                                          },
                                          child: textPrimary14w500('Logout')),
                                    ],
                                  ),
                                  sizedBoxHeight(14.h),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Row(
                        children: [
                          Icon(Icons.logout,
                              color: AppColors.buttoncolour, size: 20.h),
                          sizedBoxWidth(5.w),
                          textEF2B2B_14w400('Log Out')
                        ],
                      ),
                    ),
                    sizedBoxHeight(20.h),
                    Row(
                      children: [
                        Icon(Icons.delete_forever_outlined,
                            color: AppColors.buttoncolour, size: 20.h),
                        sizedBoxWidth(5.w),
                        textEF2B2B_14w400('Delete Account')
                      ],
                    )
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Obx(() => CircleAvatar(
                            backgroundColor: AppColors.white,
                            radius: 48.w,
                            child: profilePicPath.value != ''
                                ? ClipOval(
                                    child: Image(
                                      image:
                                          FileImage(File(profilePicPath.value)),
                                      fit: BoxFit.fill,
                                    ),
                                  )
                                : Image.asset('assets/png/dpBig.png',
                                    fit: BoxFit.fill),
                          )),
                    ),
                    sizedBoxHeight(10.h),
                    Center(child: textBlack18w400(nameValue.value)),
                    sizedBoxHeight(10.h),
                    Center(child: text7070770_14w400(hasTagValue.value)),
                    sizedBoxHeight(10.h),
                    Center(
                      child: GestureDetector(
                        onTap: () => showDialog(
                            context: context,
                            builder: (context) => inviteAlert()),
                        child: Container(
                          width: 112.w,
                          height: 32.h,
                          decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 0.25, color: Color(0xFFEF2B7B)),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(4),
                                      bottomLeft: Radius.circular(4)))),
                          child: Center(
                            child: textEF2B2B_14w400('+ Invite Groom'),
                          ),
                        ),
                      ),
                    ),
                    sizedBoxHeight(30.h),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 15.h),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFEF3F8),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: double.infinity,
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/svg/weddingCalendar.svg'),
                          sizedBoxWidth(15.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              textBlack16w400('Wedding Day'),
                              sizedBoxHeight(5.h),
                              Obx(() =>
                                  text7A7A7A_16w400(datecontroller.value)),
                            ],
                          )
                        ],
                      ),
                    ),
                    sizedBoxHeight(25.h),
                    textBlack_14_600('Email Address'),
                    sizedBoxHeight(15.h),
                    Obx(() => textBlack_14_400(emailValue.value)),
                    sizedBoxHeight(25.h),
                    textBlack_14_600('Phone Number'),
                    sizedBoxHeight(15.h),
                    Obx(() => textBlack_14_400(phoneValue.value)),
                    sizedBoxHeight(30.h),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  textBlack14w500(
                                      'Are you sure you want to logout?'),
                                  sizedBoxHeight(20.h),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            Get.back();
                                          },
                                          child: text373434_14w500('Cancel')),
                                      sizedBoxWidth(20.w),
                                      InkWell(
                                          onTap: () {
                                            Get.back();
                                            Get.back();
                                            Get.toNamed(RouteName.loginscreen);
                                          },
                                          child: textPrimary14w500('Logout')),
                                    ],
                                  ),
                                  sizedBoxHeight(14.h),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Row(
                        children: [
                          Icon(Icons.logout,
                              color: AppColors.buttoncolour, size: 20.h),
                          sizedBoxWidth(5.w),
                          textEF2B2B_14w400('Log Out')
                        ],
                      ),
                    ),
                    sizedBoxHeight(20.h),
                    Row(
                      children: [
                        Icon(Icons.delete_forever_outlined,
                            color: AppColors.buttoncolour, size: 20.h),
                        sizedBoxWidth(5.w),
                        textEF2B2B_14w400('Delete Account')
                      ],
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  AlertDialog editNameAlert() {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textBlack_14_400('Change Name'),
          sizedBoxHeight(5.h),
          TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                  hintText: 'Enter Name',
                  hintStyle: TextStyle(
                      color: const Color(0xFF8D8D8D),
                      fontSize: 14.sp,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w400))),
          sizedBoxHeight(10.h),
          TextFormField(controller: hasTagController),
          sizedBoxHeight(20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                  onTap: () => Get.back(), child: textEF2B2B_14w400('Cancel')),
              sizedBoxWidth(30.w),
              GestureDetector(
                  onTap: () {
                    nameValue.value = nameController.text;
                    hasTagValue.value = hasTagController.text;
                    Get.back();
                  },
                  child: textEF2B2B_14w400('Ok'))
            ],
          )
        ],
      ),
    );
  }

  void _presentDatePicker(context) {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime(2050))
        .then((pickedDate) {
      if (pickedDate == null) {
        return datecontroller.value = '';
      }
      _selectedDate = pickedDate;
      datecontroller.value = DateFormat('dd MMMM yyyy').format(_selectedDate!);
      // "${_selectedDate!.day.toString()}-${_selectedDate!.month.toString().padLeft(2, '0')}-${_selectedDate!.year.toString().padLeft(2, '0')}";
    });
  }

  AlertDialog inviteAlert() {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          sizedBoxHeight(30.h),
          GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Column(
                children: [
                  SvgPicture.asset('assets/svg/file.svg'),
                  sizedBoxHeight(5.h),
                  text373737_16w400center(
                      'Invite Groom by sharing \ninvite code'),
                ],
              )),
          sizedBoxHeight(20.h),
          Container(
            width: 158,
            height: 35,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 0.25, color: Color(0xFFF05E90)),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: Center(child: textBlack_14_400('Abd568gh')),
          ),
          sizedBoxHeight(34.h),
          commonNextButton(
            'Share',
            margin: 50.w,
            onTap: () async {
              Get.back();
              await FlutterShare.share(
                title: 'Example share',
                linkUrl: 'https://wedzycaptain.com/invite code - Abd568gh',
              );
            },
          ),
          sizedBoxHeight(30.h)
        ],
      ),
    );
  }

  AlertDialog changeImage() {
    Future<void> pickImageFromGallery() async {
      final picker = ImagePicker();
      final pickedImage = await picker.pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        final CroppedFile? croppedImg = await ImageCropper().cropImage(
            sourcePath: pickedImage.path,
            aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
            compressFormat: ImageCompressFormat.jpg,
            maxHeight: 512,
            maxWidth: 512,
            compressQuality: 100,
            cropStyle: CropStyle.circle,
            aspectRatioPresets: [
              CropAspectRatioPreset.square,
            ],
            uiSettings: [
              AndroidUiSettings(
                  toolbarTitle: "Crop Image",
                  toolbarColor: Get.theme.appBarTheme.backgroundColor,
                  backgroundColor: Colors.black,
                  activeControlsWidgetColor: Colors.red,
                  cropFrameColor: Colors.white,
                  lockAspectRatio: false),
              IOSUiSettings(
                title: 'Crop Image',
              ),
            ]);
        if (croppedImg != null) {
          profilePicPath.value = croppedImg.path;
        }
      }
    }

    Future<void> pickImageFromCamera() async {
      final picker = ImagePicker();
      final pickedImage = await picker.pickImage(source: ImageSource.camera);

      if (pickedImage != null) {
        final CroppedFile? croppedImg = await ImageCropper().cropImage(
            sourcePath: pickedImage.path,
            aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
            compressFormat: ImageCompressFormat.jpg,
            maxHeight: 512,
            maxWidth: 512,
            compressQuality: 100,
            cropStyle: CropStyle.circle,
            aspectRatioPresets: [
              CropAspectRatioPreset.square,
            ],
            uiSettings: [
              AndroidUiSettings(
                toolbarTitle: "Crop Image",
                toolbarColor: Get.theme.appBarTheme.backgroundColor,
                backgroundColor: Colors.black,
                activeControlsWidgetColor: Colors.red,
                cropFrameColor: Colors.white,
                lockAspectRatio: false,
              ),
              IOSUiSettings(
                title: 'Crop Image',
              ),
            ]);
        if (croppedImg != null) {
          profilePicPath.value = croppedImg.path;
        }
      }
    }

    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          sizedBoxHeight(30.h),
          GestureDetector(
              onTap: () {
                Get.back();
                pickImageFromGallery();
              },
              child: Column(
                children: [
                  SvgPicture.asset('assets/svg/file.svg'),
                  sizedBoxHeight(5.h),
                  textPrimary14w500('Upload From Gallery'),
                ],
              )),
          sizedBoxHeight(20.h),
          text373434_15w400('Or'),
          sizedBoxHeight(34.h),
          commonNextButton(
            'Click An Image',
            margin: 30.w,
            onTap: () {
              Get.back();
              pickImageFromCamera();
            },
          ),
          sizedBoxHeight(30.h)
        ],
      ),
    );
  }
}
