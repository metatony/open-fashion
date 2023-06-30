// ignore_for_file: prefer_const_constructors

import '../utilities/exports.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar(
      {super.key,
      required this.appBar,
      required this.iconColor,
      required this.bgColor,
      required this.logo,
      required this.searchColor});

  final AppBar appBar;
  final Color iconColor, searchColor, bgColor;
  final String logo;

  @override
  Widget build(BuildContext context) {
    return Consumer<NotifierState>(
      builder: (context, value, child) => AppBar(
        backgroundColor: bgColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: ImageIcon(AssetImage('images/Menu.png'), color: iconColor),
          ),
        ),
        title: Image.asset(logo),
        actions: [
          SearchIcon(
            searchColor: iconColor,
          ),
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
                    color: iconColor,
                  )),
              if (value.cartItems.isNotEmpty)
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
                      border: Border.all(width: 1.3, color: bgColor),
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
                  ),
                ),
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
