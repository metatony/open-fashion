// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_fashion/models/list.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class MenuTab extends StatelessWidget {
  const MenuTab({
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
          menuTab.length,
          (index) {
            return Tab(
              text: menuTab[index],
            );
          },
        ),
      ],
      
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide( color: Colors.orange,),
       
        //radius: 3.r,
        //distanceFromCenter: 16.h,
        //paintingStyle: PaintingStyle.fill,
      ),
    );
  }
}
