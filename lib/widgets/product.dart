import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Products extends StatelessWidget {
  const Products({
    super.key,
    required this.title,
    required this.price,
    required this.image,
  });
  final String title, price, image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 165.w,
      height: 260.h,
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              image,
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          Wrap(
            children: [
             
              Text(
                title,
                style: TextStyle(fontSize: 12.sp),
                textAlign: TextAlign.center,
              ),
            ],
          ),
         
          Text(
            price,
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xffDD8560), fontSize: 15.sp),
          ),
        ],
      ),
    );
  }
}
