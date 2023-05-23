// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_fashion/models/list.dart';
import 'package:open_fashion/widgets/divider.dart';
import 'package:open_fashion/widgets/header.dart';

import 'collections/collections.dart';
import 'home_banner.dart';
import 'justforyou/just_for_you.dart';
import 'justforyou/product.dart';
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
            ),
            SizedBox(height: 59.h),
            Collections(),
            JustForYou(),
          ],
        ),
      ),
    );
  }
}
