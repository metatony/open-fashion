
import '../../../utilities/exports.dart';

class Brands extends StatelessWidget {
  const Brands({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(child: Image.asset('images/3.png')),
        SizedBox(height: 39.h),
        SizedBox(
          width: double.infinity,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            runSpacing: 28.h,
            spacing: 38.w,
            children: [
              Image.asset('images/Prada.png'),
              Image.asset('images/Burberry.png'),
              Image.asset('images/Boss.png'),
              Image.asset('images/Catier.png'),
              Image.asset('images/Gucci.png'),
              Image.asset('images/Tiffany & Co.png'),
            ],
          ),
        ),
        SizedBox(height: 39.h),
        SizedBox(child: Image.asset('images/3.png')),
      ],
    );
  }
}
