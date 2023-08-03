// ignore_for_file: prefer_const_constructors

import '../../../utilities/exports.dart';

class ProductCounter extends StatelessWidget {
   ProductCounter({
    super.key,
    required this.index,
  });

  final int index;

  int item = 0;


  @override
  Widget build(BuildContext context) {
    return Consumer<NotifierState>(builder: (context, value, child) {
      return Row(
        children: [
          Card(
            shape: CircleBorder(),
            child: Container(
              height: 30.h,
              width: 30.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.r),
              ),
              child: GestureDetector(
                  onTap: () {
                    value.decrement(index);
                  },
                  child: Icon(Icons.remove, size: 15)),
            ),
          ),
          SizedBox(width: 13.w),
          Text(value.cartItems[index]['quantity'].toString()),
          SizedBox(width: 13.w),
          Card(
            shape: CircleBorder(),
            child: Container(
              height: 30.h,
              width: 30.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.r),
              ),
              child: GestureDetector(
                  onTap: () {
                    value.increment(index);
                  },
                  child: Icon(Icons.add, size: 15)),
            ),
          ),
          SizedBox(width: 50.w),
          Card(
            shape: CircleBorder(),
            child: Container(
              height: 30.h,
              width: 30.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.r),
              ),
              child: GestureDetector(
                  onTap: () {
                    Provider.of<NotifierState>(context, listen: false)
                        .removeItem(index);
                  },
                  child: Icon(Icons.close, size: 15)),
            ),
          ),
        ],
      );
    });
  }
}
