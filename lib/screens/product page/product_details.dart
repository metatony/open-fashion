// ignore_for_file: prefer_const_constructors

import '../../utilities/exports.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('M O H A N'),
          SizedBox(height: 8.h),
          Text('Recycle Boucle Knit Cardigan Pink'),
          SizedBox(height: 8.h),
          Text('\$120'),
        ],
      ),
    );
  }
}