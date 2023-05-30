import 'package:provider/provider.dart';

import '../../../exports.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<NotifierState>(
      builder: (BuildContext context, value, child) => TabBar(
        labelPadding: EdgeInsets.symmetric(horizontal: 1.w),
        labelColor: Colors.black,
        unselectedLabelColor: const Color(0xff888888),
        tabs: [
          ...List.generate(
            value.tab.length,
            (index) {
              return Tab(
                text: value.tab[index],
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
      ),
    );
  }
}
