import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import '../../models/list.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelPadding: EdgeInsets.symmetric(horizontal: 1.w),
      labelColor: Colors.black,
      unselectedLabelColor: Color(0xff888888),
      tabs: [
        ...List.generate(
          tab.length,
          (index) {
            return Tab(
              text: tab[index],
            );
          },
        ),
      ],
      indicator: DotIndicator(
        color: Colors.orange,
        radius: 3.r,
        distanceFromCenter: 16.h,
        paintingStyle: PaintingStyle.fill,
      ),
    );
  }
}