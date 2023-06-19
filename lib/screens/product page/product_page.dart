// ignore_for_file: prefer_const_constructors

import 'package:open_fashion/utilities/exports.dart';

class ProductPage extends StatefulWidget {
  final int categoryIndex;

  const ProductPage({super.key, required this.categoryIndex});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    List<String> images = categoryItems[widget.categoryIndex]['image2'];

    return Scaffold(
        drawer: HomeDrawer(),
        appBar: MyAppBar(appBar: AppBar(), bgColor: Color(0xffE7EAEF), iconColor: Color.fromARGB(255, 26, 25, 25), logo: 'images/Logo.png', searchColor: Color.fromARGB(255, 26, 25, 25)),
        body: SafeArea(
          child: Consumer<NotifierState>(
            builder: (BuildContext context, value, child) => ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CarouselSlider(
                    items: images.map((image) {
                      return SizedBox(
                        height: 460.h,
                        width: double.infinity,
                        child: InstaImageViewer(
                          child: Image.asset(
                            image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }).toList(),
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
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(value.indicator.length, (index) {
                      return pageDot(index: index);
                    })
                  ],
                ),
                SizedBox(height: 15.h),
                ProductBody(
                  addtobasket: widget.categoryIndex,
                  
                )
              ],
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
