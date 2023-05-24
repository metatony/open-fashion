// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Product extends StatelessWidget {
  const Product({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  final String image;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.w),
      child: SizedBox(
        width: 255.w,
        height: 390.h,
        child: Column(
          children: [
            Expanded(
              child: Image.asset(image),
            ),
            SizedBox(height: 4.h),
            Wrap(
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16.sp),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Text(
              price,
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xffDD8560), fontSize: 16.sp),
            ),
          ],
        ),
      ),
    );
  }
}