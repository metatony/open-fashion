// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../models/list.dart';
import '../../../widgets/divider.dart';
import '../../../widgets/header.dart';
import 'product.dart';

class JustForYou extends StatefulWidget {
  JustForYou({
    super.key,
  });

  @override
  State<JustForYou> createState() => _JustForYouState();
}

class _JustForYouState extends State<JustForYou> {
  int selectedImage = 0;

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
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedImage = index;
                        });
                      },
                      child: Product(
                        image: justForYou[index]['image'],
                        title: justForYou[index]['title'],
                        price: justForYou[index]['price'],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 17.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                justForYou.length,
                (index) => pageDot(index: index),
              ),
            ],
          ),
        ],
      ),
    );
  }

  AnimatedContainer pageDot({required int index}) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 6.w),
      height: 8.h,
      width: 8.w,
      decoration: BoxDecoration(
        color: selectedImage == index ? Colors.orange : Colors.transparent,
        borderRadius: BorderRadius.circular(3),
        border: selectedImage == index
            ? Border.all(color: Colors.transparent)
            : Border.all(color: Colors.black),
      ),
      duration: Duration(milliseconds: 200),
    );
  }
}
