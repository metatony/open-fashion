// ignore_for_file: avoid_unnecessary_containers

import '../exports.dart';

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
    return Container(
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
                    style: AppTextTheme.bodySmall.copyWith(
                      fontWeight: FontWeight.bold,
                    )),
                Text(body,
                    style: AppTextTheme.bodySmall
                        .copyWith(color: Color(0xff888888), fontSize: 12.sp)),
                Container(
                  child: Row(
                    children: [],
                  ),
                ),
                Text(price,
                    style: AppTextTheme.bodySmall
                        .copyWith(color: Colors.orange, fontSize: 15.sp)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
