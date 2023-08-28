import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wedzy_duo/Routes/route_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController scaleController;
  late Animation<double> scaleAnimation;
  late AnimationController slideController;
  late Animation<Offset> slideAnimation;
  final _isWidgetVisible = false.obs;

  @override
  void initState() {
    super.initState();
    // for scaleTansition
    scaleController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    scaleAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(scaleController);
    scaleController.forward();
    // for slideTansition
    slideController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slideAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: const Offset(0, 0),
    ).animate(slideController);
    Timer(const Duration(seconds: 3), () {
      _isWidgetVisible.value = true;
      slideController.forward();
    });
    Timer(const Duration(seconds: 6), () {
      Get.offAndToNamed(RouteName.onboarding1);
    });
  }

  @override
  void dispose() {
    scaleController.dispose();
    slideController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ScaleTransition(
                  scale: scaleAnimation,
                  child: SvgPicture.asset('assets/svg/splshLogo.svg'),
                ),
                SizedBox(height: 10.h),
                Obx(() => Visibility(
                      visible: _isWidgetVisible.value,
                      child: SlideTransition(
                        position: slideAnimation,
                        child: Column(
                          children: [
                            Image.asset('assets/png/wedzy.png', height: 39.h),
                            SizedBox(height: 10.h),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Ab apki nahi, humare bhi \n',
                                    style: GoogleFonts.lato(
                                      color: const Color(0xFF1E1E1E),
                                      fontSize: 20,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'ghar ki shaadi',
                                    style: GoogleFonts.lato(
                                      color: const Color(0xFF1E1E1E),
                                      fontSize: 20,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' hai.',
                                    style: GoogleFonts.lato(
                                      color: const Color(0xFF1E1E1E),
                                      fontSize: 20,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
