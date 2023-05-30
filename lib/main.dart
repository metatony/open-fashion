// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_preview/device_preview.dart';
import 'package:open_fashion/components/home_page.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => MyApp(),
      enabled: true,
    ),
    //MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(390, 844),
        builder: (BuildContext context, child) {
          return MaterialApp(
            theme: ThemeData(
            //     textTheme: TextTheme(
            //       titleLarge: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp, letterSpacing: 4),
            //       titleMedium: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp, letterSpacing: 2),
            //       titleSmall: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp, letterSpacing: 2),
            //       bodyLarge: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp),
            //       bodyMedium: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
            //       bodySmall: TextStyle(fontWeight: FontWeight.w400, fontSize: 12.sp),
            //     ),
                appBarTheme: AppBarTheme(color: Color(0xffE7EAEF)),
                fontFamily: GoogleFonts.tenorSans().fontFamily),
            debugShowCheckedModeBanner: false,
            home: HomePage(),
          );
        });
  }
}
