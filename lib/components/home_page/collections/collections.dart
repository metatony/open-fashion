import '../../../exports.dart';

class Collections extends StatelessWidget {
  const Collections({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Text('COLLECTIONS', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp, letterSpacing: 4)),
          SizedBox(height: 16.h),
          SizedBox(
            width: double.infinity,
            child: Image.asset('images/Frame 2.png', fit: BoxFit.fill),
          ),
          SizedBox(height: 40.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 57.w, vertical: 40.h),
            child: SizedBox(
              child: Image.asset('images/image 9.png'),
            ),
          ),
        ],
      ),
    );
  }
}