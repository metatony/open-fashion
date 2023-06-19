// ignore_for_file: prefer_const_constructors
import '../../utilities/exports.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        drawer: HomeDrawer(),
        backgroundColor: Colors.white,
        appBar: MyAppBar(
          appBar: AppBar(), bgColor: Color(0xffE7EAEF), iconColor: Color.fromARGB(255, 26, 25, 25), logo: 'images/Logo.png', searchColor: Color.fromARGB(255, 26, 25, 25)
        ),
        body: Body(),
      ),
    );
  }
}
