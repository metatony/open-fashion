// ignore_for_file: prefer_const_constructors

import 'package:open_fashion/models/List.dart';
import 'package:open_fashion/utilities/exports.dart';

class BlogPost extends StatelessWidget {
  BlogPost({super.key, required this.currentIndex});

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      appBar: MyAppBar(appBar: AppBar()),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              blogPost[currentIndex]['image'],
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 15.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                Text(
                  blogPost[currentIndex]['title'].toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(height: 9.h),
                Text(
                  blogPost[currentIndex]['body'],
                  style: TextStyle(
                    height: 2.h,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
