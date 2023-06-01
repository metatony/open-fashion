// ignore_for_file: prefer_const_constructors

import '../exports.dart';

class CartContainer extends StatelessWidget {
  const CartContainer({
    super.key,
    required this.image,
    required this.title,
    required this.body,
    required this.price,
  });

  final String image, title, body, price;

  @override
  Widget build(BuildContext context) {
    return Consumer<NotifierState>(
      builder: (BuildContext context, value, child) => Container(
        height: 134.h,
        margin: EdgeInsets.only(bottom: 16.h),
        width: double.infinity,
        child: Row(
          children: [
            Image.asset(image, width: 100.w, height: 134.h),
            SizedBox(width: 11.75.w),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title.toUpperCase(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 12.sp)),
                  Text(body,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff888888),
                          fontSize: 12.sp)),
                  ProductCounter(
                    number: '0',
                  ),
                  Text(price,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.orange,
                          fontSize: 15.sp)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProductCounter extends StatefulWidget {
  ProductCounter({
    super.key,
    required this.number,
  });

  String number;

  @override
  State<ProductCounter> createState() => _ProductCounterState();
}

class _ProductCounterState extends State<ProductCounter> {
  int countNum = 0;
  void addCounter() {
    countNum++;
    widget.number = countNum.toString();
  }

  void minusCounter() {
    countNum--;
    widget.number = countNum.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
          shape: CircleBorder(),
          child: Container(
            padding: EdgeInsets.all(4),
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: IconButton(
              onPressed: () {
                setState(() {
                  minusCounter();
                });
              },
              icon: ImageIcon(
                AssetImage('icons/Plus (1).png'),
              ),
            ),
          ),
        ),
        SizedBox(width: 13),
        Text(widget.number),
        SizedBox(width: 13),
        Card(
          shape: CircleBorder(),
          child: Container(
            padding: EdgeInsets.all(4),
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: IconButton(
                icon: ImageIcon(AssetImage('icons/Plus.png')),
                onPressed: () {
                  setState(() {
                    addCounter();
                  });
                }),
          ),
        ),
      ],
    );
  }
}
