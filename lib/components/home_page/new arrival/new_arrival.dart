// ignore_for_file: prefer_const_constructors


import 'package:provider/provider.dart';

import '../../../exports.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<NotifierState>(
      builder: (BuildContext context, value, child) => Column(
        children: [
          Text(
            'NEW ARRIVAL',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp, letterSpacing: 4)
          ),
          SizedBox(child: Image.asset('images/3.png')),
          SizedBox(height: 15.h),
          HomeTab(),
          SizedBox(
            height: 13.h,
          ),
          Wrap(
            alignment: WrapAlignment.start,
            runSpacing: 12.h,
            spacing: 13.w,
            children: [
              ...List.generate(value.allList.length, (index) {
                return Products(
                  title: value.allList[index]['title'],
                  price: value.allList[index]['price'],
                  image: value.allList[index]['image'],
                );
              })
            ],
          ),
          SizedBox(
            height: 27.h,
          ),
          InkWell(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Explore More', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp, letterSpacing: 2)),
                ImageIcon(AssetImage('images/Forward Arrow.png')),
              ],
            ),
          ),
          SizedBox(height: 33.h),
          Brands(),
        ],
      ),
    );
  }
}
