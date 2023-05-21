// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home_page/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7EAEF),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        leading: ImageIcon(AssetImage('images/Menu.png'), color: Colors.black),
        title: Image.asset('images/Logo.png'),
        actions: [
          Image.asset('images/Search.png'),
          Image.asset('images/shopping bag.png'),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Body(),
              SizedBox(height: 27.h),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
                child: SizedBox(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          'NEW ARRIVAL',
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 4),
                        ),
                        SizedBox(child: Image.asset('images/3.png')),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
