// ignore_for_file: prefer_const_constructors

import 'package:open_fashion/screens/home_page/collections/collection_page.dart';

import '../../../utilities/exports.dart';

class Collections extends StatelessWidget {
  const Collections({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          PageTransition(
              duration: Duration(milliseconds: 250),
              type: PageTransitionType.fade,
              child: CollectionPage()),
        );
      },
      child: SizedBox(
        child: Column(
          children: [
            Text('COLLECTIONS',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    letterSpacing: 4)),
            SizedBox(height: 16.h),
            SizedBox(
              width: double.infinity,
              child: Image.asset('images/Frame 2.png', fit: BoxFit.fill),
            ),
            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
  }
}
