// ignore_for_file: prefer_const_constructors

import 'package:open_fashion/screens/product%20page/product_page.dart';

import '../../utilities/exports.dart';

class YouMayLike extends StatelessWidget {
  const YouMayLike({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          HeaderTitle(header: 'YOU MAY ALSO LIKE', color: Colors.white,),
          SizedBox(height: 5.h),
          Div(),
          SizedBox(height: 10.h),
          Wrap(
            alignment: WrapAlignment.start,
            runSpacing: 12.h,
            spacing: 13.w,
            children: [
              ...List.generate(
                allList.length,
                (index) {
                  return Products(
                    title: recommend[index]['title'],
                    price: recommend[index]['price'],
                    image: recommend[index]['image'],
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          duration: Duration(milliseconds: 300),
                          type: PageTransitionType.leftToRight,
                          child: ProductPage(
                            //key: ValueKey(recommend[index]['id']),
                            categoryIndex: index,
                          ),
                        ),
                      );
                    }, color: Colors.black,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}