// ignore_for_file: prefer_const_constructors

import 'package:open_fashion/screens/product%20page/product_page.dart';

import '../utilities/exports.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({
    super.key,
  });

  final int index = 0;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          showSearch(
            context: context,
            delegate: SearchPage(
                filter: (categoryItems) {
                  return [
                    categoryItems['clothType'],
                  ];
                },
                suggestion:
                    Center(child: Text('Filter products by cloth type')),
                failure: Center(child: Text('No items found :(')),
                items: categoryItems,
                searchLabel: 'Search products',
                searchStyle: TextStyle(fontSize: 14.sp),
                builder: (categoryItems) {
                  return Container(
                    margin: EdgeInsets.only(top: 10.h),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            duration: Duration(milliseconds: 300),
                            type: PageTransitionType.leftToRight,
                            child: ProductPage(
                              categoryIndex: categoryItems['id'],
                            ),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          SizedBox(width: 10.w),
                          Image.asset(
                            categoryItems['image'],
                            width: 80.w,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 11.75.w),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(categoryItems['title'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        height: 1.5.h,
                                        fontSize: 12.sp)),
                                SizedBox(
                                  height: 8,
                                ),
                                Text('\$' + categoryItems['price'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        height: 1.5.h,
                                        color: Colors.orange,
                                        fontSize: 12.sp)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          );
        },
        icon: Image.asset('images/Search.png'));
  }
}
