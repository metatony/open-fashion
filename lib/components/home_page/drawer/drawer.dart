// ignore_for_file: prefer_const_constructors
import '../../../exports.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xffE7EAEF),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: ImageIcon(AssetImage('icons/Close.png')),
                  ),
                ],
              ),
            ),
            MenuTab(),
            ...List.generate(
              menuList.length,
              (index) {
                return ListTile(
                  title: Text(menuList[index]),
                  // add drop button here
                  trailing: ImageIcon(AssetImage('icons/Forward.png')),
                );
              },
            ),
            ListTile(
              leading: ImageIcon(AssetImage('icons/Call.png')),
              title: Text('(786) 713-8616'),
            ),
            ListTile(
              leading: ImageIcon(AssetImage('icons/Location.png')),
              title: Text('Store locator'),
            )
          ],
        ),
      ),
    );
  }
}
