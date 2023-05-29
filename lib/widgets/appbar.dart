
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
        Image.asset('images/shopping bag.png'),
      ],
    );
  }

  @override
  // ignore: unnecessary_new
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
