// ignore_for_file: prefer_const_constructors

import 'package:open_fashion/utilities/exports.dart';

class BlogPost extends StatelessWidget {
  BlogPost({super.key, required this.currentIndex});

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      appBar: MyAppBar(appBar: AppBar(), bgColor: Color(0xffE7EAEF), iconColor: Color.fromARGB(255, 26, 25, 25), logo: 'images/Logo.png', searchColor: Color.fromARGB(255, 26, 25, 25)),
      body: SafeArea(
          child: ListView(
        children: [
          SizedBox(height: 10.h),
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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(height: 10.h),
                SizedBox(
                  width: double.infinity,
                  height: 450.h,
                  child: Image.asset('images/image 14.png'),
                ),
                SizedBox(height: 30.h),
                Text(
                  'I found this Saint Laurent canvas handbag this summer and immediately fell in love. The neutral fabrics are so beautiful and I like how this handbag can also carry into fall. The mini Fendi bucket bag with the sheer fabric is so fun and such a statement bag. Also this DeMellier off white bag is so cute to carry to a dinner with you or going out, it’s small but not too small to fit your phone and keys still.',
                  style: TextStyle(
                    height: 2.h,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(height: 20.h),
                Text('Posted by OpenFashion | 3 Days ago'),
                SizedBox(height: 30.h),
              ],
            ),
          )
        ],
      )),
    );
  }
}
