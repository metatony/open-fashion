// ignore_for_file: prefer_const_constructors

import '../../exports.dart';

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
