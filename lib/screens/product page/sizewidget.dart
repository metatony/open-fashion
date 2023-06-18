// ignore_for_file: prefer_const_constructors,

import '../../utilities/exports.dart';

// ignore: must_be_immutable
class ProductSizeWidget extends StatelessWidget {
  ProductSizeWidget({
    super.key,
    required this.text,
    required this.index,
    required this.onTap,
    required this.selectedSize,
  });

  final String text;
  final int index;
  final VoidCallback onTap;
  int? selectedSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 24.h,
        width: 24.w,
        decoration: BoxDecoration(
          color: selectedSize == index ? Color(0xff333333) : Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 10.sp,
              color: selectedSize == index ? Colors.white : Color(0xff333333),
            ),
          ),
        ),
      ),
    );
  }
}
