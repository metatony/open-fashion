// ignore_for_file: prefer_const_constructors
import 'package:open_fashion/components/cart_container.dart';
import 'package:open_fashion/exports.dart';
import 'package:provider/provider.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NotifierState>(
      builder: (BuildContext context, value, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffE7EAEF),
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: ImageIcon(
              AssetImage('icons/Close.png'),
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(value.allList.length, (index) {
                    return CartContainer(
                      image: value.allList[index]['image'],
                      body: value.allList[index]['title'],
                      price: value.allList[index]['price'],
                      title: value.allList[index]['header'],
                    );
                  }),
                  Center(
                    child: Text(
                      value.cartItems.length != value.cartEmpty ? '': 'You have no items in your Shopping Bag.',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff888888),
                          fontSize: 12.sp),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(10),
            height: 100.h,
            width: double.infinity,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ImageIcon(
                  AssetImage('images/shopping bag.png'),
                  color: Colors.white,
                ),
                SizedBox(width: 24.w),
                Text('Continue shopping'.toUpperCase(),
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 16.sp)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
