// ignore_for_file: prefer_const_constructors

import 'package:open_fashion/utilities/exports.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      appBar: MyAppBar(
        appBar: AppBar(), bgColor: Color(0xffE7EAEF), iconColor: Color.fromARGB(255, 26, 25, 25), logo: 'images/Logo.png', searchColor: Color.fromARGB(255, 26, 25, 25),
      ),
      body: SafeArea(
          child: Consumer<NotifierState>(
        builder: (context, value, child) => Column(
          children: [
            SizedBox(height: 29.h),
            HeaderTitle(header: 'BLOG', color: Colors.black,),
            Div(),
            SizedBox(height: 20.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    value.tagList.length,
                    (index) {
                      return BlogTagWidget(text: value.tagList[index]);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
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
                            index: index,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
