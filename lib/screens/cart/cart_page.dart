// ignore_for_file: prefer_const_constructors
import 'package:open_fashion/screens/cart/components/cart_container.dart';
import 'package:open_fashion/screens/checkout/checkout_details.dart';
import 'package:open_fashion/utilities/exports.dart';

class Cart extends StatelessWidget {
  Cart({super.key});

  String? price;

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
                  ...List.generate(value.cartItems.length, (index) {
                    return CartContainer(
                      image: value.cartItems[index]['image'],
                      body: value.cartItems[index]['body'],
                      price: value.cartItems[index]['price'],
                      title: value.cartItems[index]['title'],
                      index: index,
                    );
                  }),
                  value.cartItems.isNotEmpty
                      ? SizedBox(
                          child: Column(
                            children: [
                              SizedBox(height: 10.h),
                              Divider(),
                              SizedBox(height: 14.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'SUB TOTAL',
                                    style: TextStyle(
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                  Text(
                                     '\$${price = value.calculateTotalPrice()}',
                                    style: TextStyle(
                                      letterSpacing: 2,
                                      fontSize: 16.sp,
                                      color: Colors.orange,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 6.h),
                              Text(
                                '*shipping charges, taxes and discount codes are calculated at the time of accounting. ',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Color(0xff888888),
                                    height: 1.8.h),
                              ),
                            ],
                          ),
                        )
                      : SizedBox(),
                  Center(
                    child: Text(
                      value.cartItems.isNotEmpty
                          ? ''
                          : 'You have no items in your Shopping Bag.',
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
          onTap: () {
            if (value.cartItems.isNotEmpty) {
              Navigator.push(
                context,
                PageTransition(
                  duration: Duration(milliseconds: 250),
                  type: PageTransitionType.leftToRight,
                  child: CheckoutDetails(price: price),
                ),
              );
            } else {
              Navigator.pop(context);
            }
          },
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
                Text(
                    value.cartItems.isNotEmpty
                        ? 'BUY NOW'
                        : 'CONTINUE SHOPPING',
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
