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
        backgroundColor: Color(0xffE7EAEF),
        appBar: MyAppBar(
          appBar: AppBar(),
        ),
        body: Body(),
      ),
    );
  }
}
