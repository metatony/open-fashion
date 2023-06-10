// ignore_for_file: prefer_const_constructors

import 'package:open_fashion/utilities/exports.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: HomeDrawer(),
        appBar: MyAppBar(appBar: AppBar()),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SafeArea(
            child: Consumer<NotifierState>(
              builder: (BuildContext context, value, child) => ListView(
                children: [
                  CarouselSlider(
                    items: [
                      ...List.generate(
                        categoryItems.length,
                        //value.justForYou.length,
                        (index) {
                          return SizedBox(
                            height: 460.h,
                            width: double.infinity,
                            child: InstaImageViewer(
                              child: Image.asset(
                                categoryItems[11]['image'],
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                    options: CarouselOptions(
                      height: 460.h,
                      autoPlay: false,
                      enlargeCenterPage: false,
                      viewportFraction: 1,
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
                      ...List.generate(value.justForYou.length, (index) {
                        return pageDot(index: index);
                      })
                    ],
                  ),
                  SizedBox(height: 17.h),
                  ProductDetails()
                ],
              ),
            ),
          ),
        ));
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
