// ignore_for_file: prefer_const_constructors

import 'package:open_fashion/utilities/exports.dart';

class CategoryContainer extends StatefulWidget {
  const CategoryContainer({
    super.key,
    required this.title,
    required this.body,
    required this.image,
    required this.price,
    required this.rating,
  });

  final String title, body, image, price, rating;

  @override
  State<CategoryContainer> createState() => _CategoryContainerState();
}

class _CategoryContainerState extends State<CategoryContainer> {
  int? selectedIndex;
  bool press = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            // Navigator.push(
            //   context,
            //   PageTransition(
            //     duration: Duration(milliseconds: 300),
            //     type: PageTransitionType.leftToRight,
            //     child: BlogPost(
            //       currentIndex: index,
            //     ),
            //   ),
            //);
          },
          child: SizedBox(
            height: 134.h,
            width: double.infinity,
            child: Row(
              children: [
                Image.asset(widget.image, width: 100.w, height: 134.h),
                SizedBox(width: 11.75.w),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              height: 1.5.h,
                              fontSize: 12.sp)),
                      //SizedBox(height: 8,),
                      Text(widget.body,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              height: 1.5.h,
                              color: Color(0xff888888),
                              fontSize: 12.sp)),
                      Text('\$' + widget.price,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              height: 1.5.h,
                              color: Colors.orange,
                              fontSize: 12.sp)),

                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 13,
                            color: Colors.orange,
                          ),
                          Text(widget.rating)
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 120.w,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Size'),
                                  ...List.generate(
                                    catsize.length,
                                    (index) {
                                      return catSize(
                                        text: catsize[index],
                                        index: index,
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    press = !press;
                                  });
                                },
                                child: Icon(
                                  press
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: Colors.orange,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 12.h,
        )
      ],
    );
  }

  GestureDetector catSize({required String text, required int index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        height: 24.h,
        width: 24.w,
        decoration: BoxDecoration(
          color: index == selectedIndex ? Colors.orange : Colors.white,
          border: Border.all(
              color: index == selectedIndex ? Colors.white : Colors.grey),
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 10.sp,
                color: index == selectedIndex ? Colors.white : Colors.black),
          ),
        ),
      ),
    );
  }
}
