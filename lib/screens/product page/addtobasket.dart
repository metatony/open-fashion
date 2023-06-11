// ignore_for_file: prefer_const_constructors

import '../../utilities/exports.dart';

class AddToBasket extends StatelessWidget {
  const AddToBasket({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.all(16),
      height: 56.h,
      width: double.infinity,
      color: Colors.black,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                SizedBox(width: 8),
                Text(
                  'ADD TO BASKET',
                  style: TextStyle(color: Colors.white, fontSize: 12.sp, letterSpacing: 3),
                ),
              ],
            ),
          ),
          Icon(
            Icons.favorite_outline_rounded,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}


