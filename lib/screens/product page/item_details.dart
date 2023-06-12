// ignore_for_file: prefer_const_constructors

import 'package:open_fashion/screens/product%20page/product_page.dart';
import 'package:page_transition/page_transition.dart';

import '../../utilities/exports.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    recommend.shuffle();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'MATERIALS',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 6.h),
            Text(
                'We work with monitoring programmes to ensure compliance with safety, health and quality standards for our products. ',
                style: TextStyle(fontSize: 14.sp, height: 1.7)),
            SizedBox(height: 20.h),
            Text(
              'CARE',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 6.h),
            Text(
                'To keep your jackets and coats clean, you only need to freshen them up and go over them with a cloth or a clothes brush. If you need to dry clean a garment, look for a dry cleaner that uses technologies that are respectful of the environment. ',
                style: TextStyle(fontSize: 14.sp, height: 1.7)),
            SizedBox(height: 30),
            SizedBox(
                child: Column(
              children: [
                ...List.generate(
                  productCare.length,
                  (index) {
                    return ProductCare(
                      image: productCare[index]['image'],
                      text: productCare[index]['text'],
                    );
                  },
                ),
              ],
            )),
            SizedBox(height: 20.h),
            SizedBox(
              width: double.infinity,
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  HeaderTitle(header: 'YOU MAY ALSO LIKE'),
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
                                    categoryIndex: index,
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

List productCare = [
  {
    'image': 'icons/Do Not Bleach.png',
    'text': 'Do not use bleach',
  },
  {
    'image': 'icons/Do Not Tumble Dry.png',
    'text': 'Do not tumble dry',
  },
  {
    'image': 'icons/Do Not Wash.png',
    'text': 'Dry clean with tetrachloroethylene',
  },
  {
    'image': 'icons/Iron Low Temperature.png',
    'text': 'Iron at a maximum of 110ºC/230ºF',
  }
];

class ProductCare extends StatelessWidget {
  const ProductCare({
    super.key,
    required this.image,
    required this.text,
  });

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageIcon(
          AssetImage(image),
          size: 24,
        ),
        SizedBox(width: 12.w),
        Text(
          text,
          style: TextStyle(fontSize: 12.sp),
        ),
      ],
    );
  }
}
