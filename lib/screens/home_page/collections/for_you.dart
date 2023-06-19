// ignore_for_file: prefer_const_constructors

import 'package:open_fashion/screens/product%20page/product_page.dart';

import '../../../utilities/exports.dart';

class ForYou extends StatelessWidget {
  const ForYou({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(categoryItems.getRange(37, 39).length, (index) {
          int itemIndex = 37 + index;
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  duration: Duration(milliseconds: 250),
                  type: PageTransitionType.bottomToTop,
                  child: ProductPage(categoryIndex: itemIndex),
                ),
              );
            },
            child: SizedBox(
              width: 254.w,
              height: 300.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Image.asset(categoryItems[itemIndex]['image'])),
                  SizedBox(height: 10.h),
                  Text(
                    categoryItems[itemIndex]['title'],
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        })
      ],
    );
  }
}
