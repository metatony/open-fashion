// ignore_for_file: prefer_const_constructors

import 'package:open_fashion/utilities/exports.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      appBar: MyAppBar(appBar: AppBar()),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Row(
                  children: const [
                    Text('4500 APPAREL'),
                  ],
                ),
              ),
              SizedBox(height: 26.h),
              Expanded(
                child: ListView.builder(
                  itemCount: categoryItems.length,
                  itemBuilder: (context, index) {
                    return CategoryContainer(
                      body: categoryItems[index]['body'],
                      image: categoryItems[index]['image'],
                      price: categoryItems[index]['price'],
                      rating: categoryItems[index]['rating'],
                      title: categoryItems[index]['title'], 
                      productIndex: index,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
