// ignore_for_file: prefer_const_constructors

import '../../exports.dart';

class BlogTagWidget extends StatelessWidget {
  const BlogTagWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16.w),
      height: 32.h,
      //width: 73.w,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
        color: Color.fromARGB(255, 243, 243, 243),
      ),
      child: Text(text),
    );
  }
}
