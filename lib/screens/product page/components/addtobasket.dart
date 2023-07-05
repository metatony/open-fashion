// ignore_for_file: prefer_const_constructors

import '../../../utilities/exports.dart';

class AddToBasket extends StatelessWidget {
  const AddToBasket({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Consumer<NotifierState>(
      builder: (BuildContext context, value, child) => GestureDetector(
        onTap: () {
          Provider.of<NotifierState>(context, listen: false).addToCart(index);
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          height: 60.h,
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
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          letterSpacing: 3),
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
        ),
      ),
    );
  }
}
