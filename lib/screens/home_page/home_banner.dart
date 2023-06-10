import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Image.asset('images/Banner (1).png',fit: BoxFit.cover,),
    );
  }
}
