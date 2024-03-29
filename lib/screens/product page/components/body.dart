// ignore_for_file: prefer_const_constructors

import '../../../utilities/exports.dart';
import 'product_materials.dart';

class ProductBody extends StatefulWidget {
  final int addtobasket;
  const ProductBody({
    super.key,
    required this.addtobasket,
  });

  @override
  State<ProductBody> createState() => _ProductBodyState();
}

class _ProductBodyState extends State<ProductBody> {
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
                  SizedBox(height: 5.h),
                  Text('Recycle Boucle Knit Cardigan Pink'),
                  SizedBox(height: 8.h),
                  Text(
                    '\$120',
                    style: TextStyle(color: Colors.orange),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 125.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Color'),
                            ...List.generate(productcolor.length, (index) {
                              return ProductColorWidget(
                                color: productcolor[index],
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
                            ...List.generate(productsize.length, (index) {
                              return ProductSizeWidget(
                                text: productsize[index],
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

          SizedBox(height: 25.h),
          //button
          AddToBasket(
            index: widget.addtobasket,
          ),
          SizedBox(height: 16.h),
          ProductMaterials(),
        ],
      ),
    );
  }
}
