// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/list.dart';
import '../../widgets/product.dart';
import 'tab_bar.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'NEW ARRIVAL',
          style: TextStyle(
              fontSize: 18.sp, fontWeight: FontWeight.w400, letterSpacing: 4),
        ),
        SizedBox(child: Image.asset('images/3.png')),
        SizedBox(height: 15.h),
        HomeTab(),
        SizedBox(
          height: 13.h,
        ),
        Wrap(
          alignment: WrapAlignment.start,
          runSpacing: 12.h,
          spacing: 13.w,
          children: [
            ...List.generate(allList.length, (index) {
              return Products(
                title: allList[index]['title'],
                price: allList[index]['price'],
                image: allList[index]['image'],
              );
            })
          ],
        )
      ],
    );
  }
}

