import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({super.key, required this.header});
  
  final String header;

  @override
  Widget build(BuildContext context) {
    return Text(
      header,
      style: TextStyle(
          fontSize: 18.sp, fontWeight: FontWeight.w400, letterSpacing: 4.w),
    );
  }
}
