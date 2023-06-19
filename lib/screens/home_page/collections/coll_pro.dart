// ignore_for_file: prefer_const_constructors

import 'package:open_fashion/screens/product%20page/product_page.dart';

import '../../../utilities/exports.dart';

class CollectionProducts extends StatelessWidget {
  const CollectionProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Wrap(
        alignment: WrapAlignment.start,
        runSpacing: 12.h,
        spacing: 13.w,
        children: [
          ...List.generate(categoryItems.getRange(31, 37).length, (index) {
            int itemIndex = 31 + index;
            return Products(
              title: categoryItems[itemIndex]['title'],
              price: categoryItems[itemIndex]['price'],
              image: categoryItems[itemIndex]['image'],
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    duration: Duration(milliseconds: 300),
                    type: PageTransitionType.leftToRight,
                    child: ProductPage(
                      categoryIndex: itemIndex,
                    ),
                  ),
                );
              },
              color: Colors.white,
            );
          })
        ],
      ),
    );
  }
}
