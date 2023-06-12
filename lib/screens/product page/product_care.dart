import '../../utilities/exports.dart';

List productCare = [
  {
    'image': 'icons/Do Not Bleach.png',
    'text': 'Do not use bleach',
  },
  {
    'image': 'icons/Do Not Tumble Dry.png',
    'text': 'Do not tumble dry',
  },
  {
    'image': 'icons/Do Not Wash.png',
    'text': 'Dry clean with tetrachloroethylene',
  },
  {
    'image': 'icons/Iron Low Temperature.png',
    'text': 'Iron at a maximum of 110ºC/230ºF',
  }
];

class ProductCare extends StatelessWidget {
  const ProductCare({
    super.key,
    required this.image,
    required this.text,
  });

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageIcon(
          AssetImage(image),
          size: 24,
        ),
        SizedBox(width: 12.w),
        Text(
          text,
          style: TextStyle(fontSize: 12.sp),
        ),
      ],
    );
  }
}
