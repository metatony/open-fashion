// ignore_for_file: prefer_const_constructors

import 'package:open_fashion/screens/product%20page/product_materials.dart';

import '../../../utilities/exports.dart';

class JustForYou extends StatefulWidget {
  const JustForYou({
    super.key,
  });

  @override
  State<JustForYou> createState() => _JustForYouState();
}

class _JustForYouState extends State<JustForYou> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Consumer<NotifierState>(
        builder: (BuildContext context, value, Widget? child) => Column(
          children: [
            HeaderTitle(header: 'JUST FOR YOU', color: Colors.white,),
            Div(),
            SizedBox(height: 23.h),
            CarouselSlider(
              items: [
                ...List.generate(
                  categoryItems.getRange(27, 31).length,
                  (index) {
                    int itemIndex = 27 + index;
                    return Product(
                      image: categoryItems[itemIndex]['image'],
                      title: categoryItems[itemIndex]['title'],
                      price: categoryItems[itemIndex]['price'],
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
                    );
                  },
                ).toList(),
              ],
              options: CarouselOptions(
                height: 390.h,
                autoPlay: true,
                //enlargeCenterPage: true,
                viewportFraction: 0.7,
                enableInfiniteScroll: false,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                onPageChanged: (index, reason) {
                  setState(() {
                    value.selectedImage = index;
                  });
                },
              ),
            ),
            SizedBox(height: 17.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(allList.length, (index) {
                  return pageDot(index: index);
                })
              ],
            ),
            SizedBox(height: 17.h),
          ],
        ),
      ),
    );
  }
}

Consumer<Object?> pageDot({required int index}) {
  return Consumer<NotifierState>(
    builder: (BuildContext context, value, Widget? child) => AnimatedContainer(
      margin: EdgeInsets.only(right: 6.w),
      height: 8.h,
      width: 8.w,
      decoration: BoxDecoration(
        color:
            value.selectedImage == index ? Colors.orange : Colors.transparent,
        borderRadius: BorderRadius.circular(6.r),
        border: value.selectedImage == index
            ? Border.all(color: Colors.transparent)
            : Border.all(color: Colors.grey),
      ),
      duration: Duration(milliseconds: 200),
    ),
  );
}
