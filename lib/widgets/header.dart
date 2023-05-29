import 'package:flutter/material.dart';
import 'package:open_fashion/utilities/text_theme.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({super.key, required this.header});
  
  final String header;

  @override
  Widget build(BuildContext context) {
    return Text(
      header,
      style: AppTextTheme.title,
    );
  }
}
