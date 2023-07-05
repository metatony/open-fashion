// ignore_for_file: prefer_const_constructors

import '../../../utilities/exports.dart';

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
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
        color: Color.fromARGB(255, 243, 243, 243),
      ),
      child: Center(child: Text(text)),
    );
  }
}
