
import '../exports.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({super.key, required this.header});
  
  final String header;

  @override
  Widget build(BuildContext context) {
    return Text(
      header,
      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp, letterSpacing: 4),
    );
  }
}
