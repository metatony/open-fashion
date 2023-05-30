// ignore_for_file: prefer_const_constructors
import 'package:open_fashion/exports.dart';

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
            child: Image.asset(image),
          ),
          SizedBox(height: 4.h),
          Wrap(
            children: [
              Text(title, textAlign:  TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w400, height: 1.2.h, fontSize: 12.sp)),
            ],
          ),
          Text(price,
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontWeight: FontWeight.w400,color: Colors.orange, fontSize: 14.sp)),
        ],
      ),
    );
  }
}
