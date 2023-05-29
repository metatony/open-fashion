// ignore_for_file: prefer_const_constructors

import 'package:open_fashion/exports.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          HeaderTitle(header: 'BLOG'),
          Div(),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                  tagList.length,
                  (index) {
                    return BlogTag(text: tagList[index]);
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    ...List.generate(
                      blogList.length,
                      (index) {
                        return BlogContainer(
                          body: blogList[index]['body'],
                          date: blogList[index]['date'],
                          image: blogList[index]['image'],
                          title: blogList[index]['title'],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class BlogContainer extends StatelessWidget {
  const BlogContainer({
    super.key,
    required this.image,
    required this.title,
    required this.body,
    required this.date,
  });

  final String image, title, body, date;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
                      style: AppTextTheme.bodySmall.copyWith(
                          fontWeight: FontWeight.bold, height: 1.5.h)),
                  //SizedBox(height: 8,),
                  Text(body,
                      style: AppTextTheme.bodySmall
                          .copyWith(height: 1.2.h, color: Color(0xff888888))),
                  Text(date,
                      style: AppTextTheme.bodySmall
                          .copyWith(color: Color(0xff888888), fontSize: 11.sp)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BlogTag extends StatelessWidget {
  const BlogTag({
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
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
        color: Color.fromARGB(255, 243, 243, 243),
      ),
      child: Text(text),
    );
  }
}
