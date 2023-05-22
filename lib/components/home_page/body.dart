// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_banner.dart';
import 'new arrival/new_arrival.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            HomeBanner(),
            SizedBox(height: 27.h),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
              child: SizedBox(
                child: NewArrival(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
