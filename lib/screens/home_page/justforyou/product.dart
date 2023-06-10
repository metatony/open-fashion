// ignore_for_file: prefer_const_constructors

import '../../../utilities/exports.dart';

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
        //height: 350.h,
        child: Column(
          children: [
            Expanded(
              child: Image.asset(image, fit: BoxFit.cover ),
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
