// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../models/list.dart';
import '../../../widgets/divider.dart';
import '../../../widgets/header.dart';
import 'product.dart';

class JustForYou extends StatelessWidget {
  const JustForYou({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          HeaderTitle(header: 'JUST FOR YOU'),
          Div(),
          SizedBox(height: 23.h),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                  justForYou.length,
                  (index) {
                    return Product(
                      image: justForYou[index]['image'],
                      title: justForYou[index]['title'],
                      price: justForYou[index]['price'],
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
