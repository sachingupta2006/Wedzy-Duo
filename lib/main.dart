import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:wedzy_duo/Routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 800),
        builder: (context, child) => GetMaterialApp(
              title: 'Wedzy Duo',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(),
              initialRoute: '/',
              getPages: AppRoutes.appRoutes(),
            ));
  }
}
