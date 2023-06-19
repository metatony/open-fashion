import '../utilities/exports.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({super.key, required this.header, required this.color});

  final String header;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      header,
      style: TextStyle(
        color: color,
          fontWeight: FontWeight.w400, fontSize: 18.sp, letterSpacing: 4),
    );
  }
}
