// ignore_for_file: prefer_const_constructors
import 'package:device_preview/device_preview.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:open_fashion/screens/category/category.dart';
import 'package:open_fashion/screens/product%20page/product_page.dart';

import 'utilities/exports.dart';

void main() {
  runApp(
    //MyApp()
   DevicePreview(
      builder: (context) => MyApp(),
      enabled: true,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => NotifierState(),
      child: ScreenUtilInit(
          designSize: Size(390, 844),
          builder: (BuildContext context, child) {
            return MaterialApp(
              theme: ThemeData(
                  appBarTheme: AppBarTheme(color: Color(0xffE7EAEF)),
                  fontFamily: GoogleFonts.tenorSans().fontFamily),
              debugShowCheckedModeBanner: false,
              home: HomePage()
            );
          }),
    );
  }
}
