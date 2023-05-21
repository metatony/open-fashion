// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:open_fashion/components/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
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
                appBarTheme: AppBarTheme(color: Color(0xffE7EAEF)),
               
                fontFamily: GoogleFonts.tenorSans().fontFamily),
            debugShowCheckedModeBanner: false,
            home: HomePage(),
          );
        });
  }
}
