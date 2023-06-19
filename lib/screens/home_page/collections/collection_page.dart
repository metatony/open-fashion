// ignore_for_file: prefer_const_constructors

import 'package:open_fashion/utilities/exports.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: HomeDrawer(),
      appBar: MyAppBar(
        appBar: AppBar(),
        iconColor: Colors.white,
        logo: 'images/Group.png',
        bgColor: Colors.black,
        searchColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Image.asset('images/October.png'),
              SizedBox(height: 10.h),
              Center(
                  child: HeaderTitle(
                header: 'C O L L E C T I O N',
                color: Color(0xffFCFCFC),
              )),
              SizedBox(height: 10.h),
              SizedBox(
                width: double.infinity,
                height: 456.h,
                child: Image.asset('images/image 20.png'),
              ),
              SizedBox(height: 28.h),
              Center(child: CollectionProducts()),
              SizedBox(height: 45.h),
              Center(
                child: HeaderTitle(
                  header: 'YOU MAy ALSO LIKE',
                  color: Color(0xffFCFCFC),
                ),
              ),
              SizedBox(height: 10.h),
              Div(),
              SizedBox(height: 10.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ForYou(),
                
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
