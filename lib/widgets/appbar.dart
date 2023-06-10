// ignore_for_file: prefer_const_constructors

import 'package:open_fashion/screens/cart/cart_page.dart';
import 'package:page_transition/page_transition.dart';

import '../utilities/exports.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key, required this.appBar});

  final AppBar appBar;

  @override
  Widget build(BuildContext context) {
    return Consumer<NotifierState>(
      builder: (context, value, child) => AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: ImageIcon(AssetImage('images/Menu.png'), color: Colors.black),
          ),
        ),
        title: Image.asset('images/Logo.png'),
        actions: [
          Image.asset('images/Search.png'),
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        duration: Duration(milliseconds: 250),
                        type: PageTransitionType.leftToRight,
                        child: Cart(),
                      ),
                    );
                  },
                  icon: ImageIcon(
                    AssetImage('images/shopping bag.png'),
                    color: Color.fromARGB(255, 26, 25, 25),
                  )),
          
              if (value.cartItems.length != 0)
                Positioned(
                    top: 3,
                    right: 20,
                    child: Container(
                      padding: EdgeInsets.all(2),
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                        border: Border.all(width: 1.3, color: Color(0xffE7EAEF)),
                      ),
                      child: Center(
                        child: Text(
                          value.cartItems.length.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ))
            ],
          )
        ],
      ),
    );
  }

  @override
  // ignore: unnecessary_new
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
