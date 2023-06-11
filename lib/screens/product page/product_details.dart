// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:open_fashion/screens/product%20page/addtobasket.dart';
import 'package:open_fashion/screens/product%20page/item_details.dart';

import '../../utilities/exports.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({
    super.key,
  });

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int? selectedColor;
  int? selectedSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('M O H A N'),
                      Icon(Icons.arrow_circle_up)
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Text('Recycle Boucle Knit Cardigan Pink'),
                  SizedBox(height: 8.h),
                  Text(
                    '\$120',
                    style: TextStyle(color: Colors.orange),
                  ),
                  SizedBox(height: 18.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 125.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Color'),
                            ...List.generate(colorGuide.length, (index) {
                              return ColorWidget(
                                color: colorGuide[index],
                                index: index,
                                selectedColor: selectedColor,
                                onTap: () {
                                  setState(() {
                                    selectedColor = index;
                                  });
                                },
                              );
                            })
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 125.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Size'),
                            ...List.generate(catsize.length, (index) {
                              return SizeWidget(
                                text: catsize[index],
                                index: index,
                                onTap: () {
                                  setState(() {
                                    selectedSize = index;
                                  });
                                },
                                selectedSize: selectedSize,
                              );
                            })
                          ],
                        ),
                      ),
                      SizedBox(width: 15.w),
                    ],
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 24.h),
          //button
          AddToBasket(),
          SizedBox(height: 16.h),
          ItemDetails()
        ],
      ),
    );
  }
}
