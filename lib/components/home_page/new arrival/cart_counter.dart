// ignore_for_file: prefer_const_constructors


import '../../../exports.dart';

class ProductCounter extends StatefulWidget {
  ProductCounter({
    super.key,
  });

  @override
  State<ProductCounter> createState() => _ProductCounterState();
}

class _ProductCounterState extends State<ProductCounter> {
  int item = 0;
  int countNum = 0;

  void minusCounter() {
    countNum--;
  }

  void addCounter() {
    countNum++;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<NotifierState>(
      builder: (context, value, child) => Row(
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
                    setState(() {
                      minusCounter();
                    });
                  },
                  child: Icon(
                    Icons.remove,
                    size: 15,
                  )),
            ),
          ),
          SizedBox(width: 13.w),
          Text(countNum.toString()),
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
                    setState(() {
                      addCounter();
                    });
                  },
                  child: Icon(
                    Icons.add,
                    size: 15,
                  )),
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
                        .removeItem(item);
                  },
                  child: Icon(
                    Icons.close,
                    size: 15,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
