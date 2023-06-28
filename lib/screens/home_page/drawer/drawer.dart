// ignore_for_file: prefer_const_constructors
import 'package:open_fashion/screens/blog_page/blog_page.dart';

import '../../../utilities/exports.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<NotifierState>(
      builder: (BuildContext context, value, child) => DefaultTabController(
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
                value.menuList.length,
                (index) {
                  return ListTile(
                    title: Text(value.menuList[index]),
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
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BlogPage()));
                },
                child: Text(
                  'Blog',
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
