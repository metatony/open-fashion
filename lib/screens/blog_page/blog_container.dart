// ignore_for_file: prefer_const_constructors

import 'package:open_fashion/screens/blog_page/blog_post.dart';
import 'package:page_transition/page_transition.dart';

import '../../utilities/exports.dart';

class BlogContainer extends StatelessWidget {
  BlogContainer({
    super.key,
    required this.image,
    required this.title,
    required this.body,
    required this.date,
    required this.index,
  });

  final int index;

  final String image, title, body, date;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          PageTransition(
            duration: Duration(milliseconds: 300),
            type: PageTransitionType.leftToRight,
            child: BlogPost(
              currentIndex: index,
            ),
          ),
        );
      },
      child: Container(
        height: 155.h,
        margin: EdgeInsets.only(bottom: 23.h),
        width: double.infinity,
        child: Row(
          children: [
            Image.asset(image, width: 120.w, height: 155.h),
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
                          height: 1.5.h,
                          fontSize: 12.sp)),
                  //SizedBox(height: 8,),
                  Text(body,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          height: 1.5.h,
                          color: Color(0xff888888),
                          fontSize: 12.sp)),
                  Text(date,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          height: 1.5.h,
                          color: Color(0xff888888),
                          fontSize: 12.sp)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
