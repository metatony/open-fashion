import '../../utilities/exports.dart';

// ignore: must_be_immutable
class ProductColorWidget extends StatelessWidget {
  ProductColorWidget({
    super.key,
    required this.color,
    required this.index,
    required this.selectedColor,
    required this.onTap,
  });

  final Color color;
  final int index;
  int? selectedColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 24.h,
        width: 24.h,
        decoration: BoxDecoration(
            border: index == selectedColor
                ? Border.all(width: 1, color: Colors.grey)
                : Border.all(width: 1, color: Colors.white),
            color: Colors.white,
            borderRadius: BorderRadius.circular(50.r)),
        child: Center(
          child: Container(
            height: 16.h,
            width: 16.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.r), color: color),
          ),
        ),
      ),
    );
  }
}
