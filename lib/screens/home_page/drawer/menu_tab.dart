// ignore_for_file: prefer_const_constructors

import 'package:provider/provider.dart';

import '../../../utilities/exports.dart';

class MenuTab extends StatelessWidget {
  const MenuTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<NotifierState>(
      builder: (BuildContext context, value, child) => TabBar(
        labelPadding: EdgeInsets.symmetric(horizontal: 1.w),
        labelColor: Colors.black,
        unselectedLabelColor: Color(0xff888888),
        tabs: [
          ...List.generate(
            value.menuTab.length,
            (index) {
              return Tab(
                text: value.menuTab[index],
              );
            },
          ),
        ],
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(
            color: Colors.orange,
          ),
        ),
      ),
    );
  }
}
