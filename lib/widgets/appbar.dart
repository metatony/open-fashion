// ignore_for_file: prefer_const_constructors

import 'package:open_fashion/components/cart_page.dart';
import 'package:page_transition/page_transition.dart';

import '../exports.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key, required this.appBar});

  final AppBar appBar;

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
              color: Colors.black,
            ))
      ],
    );
  }

  @override
  // ignore: unnecessary_new
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
