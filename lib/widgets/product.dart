// ignore_for_file: prefer_const_constructors
import 'package:open_fashion/utilities/exports.dart';

class Products extends StatelessWidget {
  const Products({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.onPressed,
    required this.color,
  });
  final String title, price, image;
  final Color color;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 165.w,
      height: 260.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: GestureDetector(
                onTap: onPressed, child: Image.asset(image, fit: BoxFit.cover)),
          ),
          SizedBox(height: 8.h),
          Wrap(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: color,
                    fontWeight: FontWeight.w400,
                    height: 1.2.h,
                    fontSize: 12.sp),
              ),
            ],
          ),
          SizedBox(height: 5.h),
          Text('\$' + price,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.orange,
                  fontSize: 14.sp)),
        ],
      ),
    );
  }
}
