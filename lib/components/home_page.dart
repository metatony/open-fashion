// ignore_for_file: prefer_const_constructors
import '../exports.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        drawer: HomeDrawer(),
        backgroundColor: Color(0xffE7EAEF),
        appBar: AppBar(
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
        ),
        body: Body(),
      ),
    );
  }
}
