// ignore_for_file: prefer_const_constructors

import 'package:open_fashion/exports.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      appBar: MyAppBar(
        appBar: AppBar(),
      ),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(height: 29.h),
          HeaderTitle(header: 'BLOG'),
          Div(),
          SizedBox(height: 20.h),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                  tagList.length,
                  (index) {
                    return BlogTagWidget(text: tagList[index]);
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
