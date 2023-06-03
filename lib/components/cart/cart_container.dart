// ignore_for_file: prefer_const_constructors

import 'package:open_fashion/components/cart/cart_counter.dart';

import '../../utilities/exports.dart';

class CartContainer extends StatelessWidget {
  CartContainer({
    super.key,
    required this.image,
    required this.title,
    required this.body,
    required this.price,
  });

  final String image, title, body, price;

  @override
  Widget build(BuildContext context) {
    return Consumer<NotifierState>(
      builder: (BuildContext context, value, child) => Container(
        height: 134.h,
        margin: EdgeInsets.only(bottom: 16.h),
        width: double.infinity,
        child: Row(
          children: [
            Image.asset(image, width: 100.w, height: 134.h),
            SizedBox(width: 11.75.w),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title.toUpperCase(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 12.sp)),
                  Text(body,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff888888),
                          fontSize: 12.sp)),
                  ProductCounter(),
                  Text('\$' + price,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.orange,
                          fontSize: 15.sp)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
