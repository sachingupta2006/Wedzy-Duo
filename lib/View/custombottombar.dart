import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:wedzy_duo/Routes/route_name.dart';
import 'package:wedzy_duo/Utils/Common/sized_box.dart';
import 'package:wedzy_duo/Utils/Common/texts.dart';
import 'package:wedzy_duo/Utils/Common/themedata.dart';
import 'package:wedzy_duo/View/Home/Budget/budget.dart';
import 'package:wedzy_duo/View/Home/loans.dart';
import 'package:wedzy_duo/View/Home/rentals.dart';
import 'package:wedzy_duo/View/Home/vendors.dart';
import 'package:wedzy_duo/View/Home/weddingdiary.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';

class Custombottombar extends StatefulWidget {
  const Custombottombar({super.key});

  @override
  State<Custombottombar> createState() => _CustombottombarState();
}

class _CustombottombarState extends State<Custombottombar>
    with SingleTickerProviderStateMixin {
  bool isSideMenuClosed = true;
  late AnimationController _animationController;
  late Animation<double> animation;
  late Animation<double> scaleAnimation;
  late bool logedIn;

  var screens = [
    const BudgetPage(),
    const Loans(),
    const WeddingDiary(),
    const RentalsPage(),
    const VendorsPage()
  ];

  List bottomBarDataappcolor = [
    {"imageUrl": "assets/svg/budgetappcolor.svg", "label": "Budget"},
    {"imageUrl": "assets/svg/loansappcolor.svg", "label": "Loans"},
    {"imageUrl": "assets/svg/weddingappcolor.svg", "label": "Wedding Diary"},
    {"imageUrl": "assets/svg/rentalsappcolor.svg", "label": "Rentals"},
    {"imageUrl": "assets/svg/vendorsappcolor.svg", "label": "Vendors"},
  ];

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200))
      ..addListener(() {
        setState(() {});
      });
    animation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn));
    scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn));
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  final selectedIndex = 2.obs;
  final isDialOpen = ValueNotifier(false);

  buildtermscondidialog(context) {
    return showDialog(
      // barrierDismissible: false,
      context: context,
      builder: (context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AlertDialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 16),
            backgroundColor: Get.isDarkMode ? Colors.black : Color(0XFFFFFFFF),
            contentPadding: EdgeInsets.fromLTRB(39, 11, 39, 21),
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
                  child: SvgPicture.asset(
                    "assets/svg/dialogspeedDial.svg",
                    // width: 81.w,
                    // height: 80.h,
                  ),
                ),
                sizedBoxHeight(8.h),
                Align(
                    alignment: Alignment.center,
                    child: textBlack20W7000Mon("My Captain")),
                sizedBoxHeight(3.h),
                text707070_16w400("Your personal wedding assistant!!"),
                sizedBoxHeight(17.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0XFFFEF3F8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/svg/phone-call (1).svg")
                        ],
                      ),
                    ),
                    sizedBoxWidth(20.h),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0XFFFEF3F8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/svg/message-square.svg")
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Obx(
          () => Scaffold(
              floatingActionButton: selectedIndex.value == 2
                  ? SpeedDial(
                      closeDialOnPop: false,

                      direction: SpeedDialDirection.up,
                      buttonSize: Size(52, 52),
                      childrenButtonSize: Size(58, 58),
                      // animatedIcon: AnimatedIcons.arrow_menu,
                      animatedIconTheme:
                          IconThemeData(color: AppColors.buttoncolour),
                      // icon: Icons.star,
                      child: SvgPicture.asset("assets/svg/floatingimage.svg"),
                      activeChild:
                          SvgPicture.asset("assets/svg/floatingimage1.svg"),
                      iconTheme: IconThemeData(color: AppColors.buttoncolour),
                      backgroundColor: Color(0XFFF5DCE5),
                      overlayColor: Colors.black,
                      overlayOpacity: 0.4,
                      // spacing: 1,
                      // spaceBetweenChildren: 2,
                      // closeManually: true,
                      // onOpen: () => showToast('Opened...'),
                      // onClose: () => showToast("Closed..."),
                      openCloseDial: isDialOpen,
                      children: [
                        SpeedDialChild(
                            child: SvgPicture.asset(
                                "assets/svg/floatingimage2.svg"),
                            // Icon(
                            //   Icons.call,
                            //   color: AppColors.buttoncolour,
                            // ),
                            // label: 'Call',
                            backgroundColor: Color(0XFFF5DCE5),
                            onTap: () {
                              Get.toNamed(RouteName.weddingcalendar);
                            }
                            //  buildtermscondidialog(context),
                            //  showToast("Selected Call..."),
                            ),
                        SpeedDialChild(
                          child:
                              SvgPicture.asset("assets/svg/floatingimage3.svg"),
                          // Icon(
                          //   Icons.mail_outline_outlined,
                          //   color: AppColors.buttoncolour,
                          // ),
                          // label: 'Mail',
                          backgroundColor: Color(0XFFF5DCE5),
                          onTap: () => showToast("Selected MAil..."),
                        ),
                        SpeedDialChild(
                          child: SvgPicture.asset("assets/svg/contact.svg"),

                          // Icon(
                          //   Icons.favorite_border_outlined,
                          //   color: AppColors.buttoncolour,
                          // ),
                          // label: 'Like',
                          backgroundColor: Color(0XFFF5DCE5),
                          onTap: () => buildtermscondidialog(context),
                        ),
                      ],
                    )
                  : null,
              backgroundColor: AppColors.white,
              resizeToAvoidBottomInset: false,
              extendBody: true,
              body: Stack(
                children: [
                  // AnimatedPositioned(
                  //   duration: const Duration(milliseconds: 200),
                  //   curve: Curves.fastOutSlowIn,
                  //   left: isSideMenuClosed ? -300.w : 0,
                  //   width: 300.w,
                  //   height: MediaQuery.of(context).size.height,
                  //   child: const SizedBox(),
                  // ),
                  Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..rotateY(
                          animation.value - 30 * animation.value * pi / 180),
                    child: Transform.translate(
                      offset: Offset(animation.value * 300.w, 0),
                      child: Transform.scale(
                        scale: scaleAnimation.value,
                        child: screens[selectedIndex.value],
                      ),
                    ),
                  ),
                  // selectedIndex == 2
                  //     ? AnimatedPositioned(
                  //         duration: const Duration(milliseconds: 200),
                  //         curve: Curves.fastOutSlowIn,
                  //         top: 5.h,
                  //         left: 4.w,
                  //         child: IconButton(
                  //           iconSize: 50.h,
                  //           onPressed: () {
                  //             if (isSideMenuClosed) {
                  //               _animationController.forward();
                  //             } else {
                  //               _animationController.reverse();
                  //             }
                  //             setState(() {
                  //               isSideMenuClosed = !isSideMenuClosed;
                  //             });
                  //           },
                  //           icon: isSideMenuClosed
                  //               ? Container(
                  //                   height: 42.h,
                  //                   width: 42.h,
                  //                   decoration: BoxDecoration(
                  //                     borderRadius: BorderRadius.circular(25.h),
                  //                     color: AppColors.white,
                  //                     boxShadow: [
                  //                       BoxShadow(
                  //                         color: Colors.grey.shade400,
                  //                         blurRadius: 5.h,
                  //                         spreadRadius: 2.h,
                  //                       )
                  //                     ],
                  //                   ),
                  //                   child: Row(
                  //                     mainAxisAlignment: MainAxisAlignment.center,
                  //                     children: [
                  //                       // SvgPicture.asset(
                  //                       //   "assets/images/menu.svg",
                  //                       //   height: 18.h,
                  //                       //   width: 18.h,
                  //                       //   color: AppColors.black,
                  //                       // ),
                  //                     ],
                  //                   ),
                  //                 )
                  //               : Icon(
                  //                   Icons.cancel,
                  //                   size: 29.w,
                  //                   color: Colors.white,
                  //                 ),
                  //         ),
                  //       )
                  //     : SizedBox(),
                ],
              ),
              bottomNavigationBar:
                  // isSideMenuClosed
                  //     ?
                  Padding(
                padding: EdgeInsets.only(bottom: 0.h),
                child: Container(
                  height: 80.h,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.grey.shade400,
                      //     blurRadius: 5.h,
                      //     spreadRadius: 2.h,
                      //   )
                      // ],
                      borderRadius: BorderRadius.circular(0.h)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 9.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                            5,
                            (index) => activeIcon(
                                "assets/svg/budgetappcolor.svg", index))),
                  ),
                ),
              )),
        ),
      ),
    );
  }

  Widget activeIcon(String imagePath, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedIndex.value = index;
        });
        // selectedIndex = index;
      },
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          height: 45.h,
          width: selectedIndex == index ? 140.w : 45.h,
          decoration: BoxDecoration(
              image: selectedIndex == index
                  ? DecorationImage(
                      image: AssetImage("assets/png/bottombackground.png"),
                      // fit: BoxFit.fill
                    )
                  : DecorationImage(
                      image: AssetImage("assets/png/bottombackground2.png"),
                      fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(25.h),
              color: selectedIndex == index
                  ? AppColors.buttoncolour
                  : Color(0xffFEF3F8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 22.h,
                width: 22.h,
                child: SvgPicture.asset(
                  bottomBarDataappcolor[index]["imageUrl"],
                  // height: 35.h,
                  // width: 35.h,
                  color: selectedIndex == index
                      ? AppColors.white
                      : AppColors.buttoncolour,
                  fit: BoxFit.fill,
                  // color: AppColors.greyD3B3F43,
                  // colorFilter: AppColors.greyD3B3F43,
                ),
              ),

              selectedIndex == index ? sizedBoxWidth(10.w) : SizedBox(),
              // /
              selectedIndex == index
                  ? textWhite16(bottomBarDataappcolor[index]["label"])
                  : SizedBox()
            ],
          ),
        ),
        sizedBoxHeight(4.h),
        selectedIndex == index
            ? SizedBox(
                height: 14.h,
              )
            : text707707010(bottomBarDataappcolor[index]["label"]),
      ]),
    );
  }

  Widget inactiveIcon(String imagePath) {
    return Column(children: [
      SvgPicture.asset(
        imagePath,
        height: 35.h,
        width: 35.h,
        color: AppColors.buttoncolour,
      ),
    ]);
  }

  Future showToast(String message) async {
    await Fluttertoast.cancel();

    Fluttertoast.showToast(msg: message, fontSize: 18.sp);
  }
}
