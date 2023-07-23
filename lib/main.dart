// ignore_for_file: prefer_const_constructors
import 'package:device_preview/device_preview.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utilities/exports.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => MyApp(),
      enabled: false,
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
        useInheritedMediaQuery: true,
        designSize: Size(390, 844),
        builder: (BuildContext context, child) {
          return MaterialApp(
            theme: ThemeData(
                appBarTheme: AppBarTheme(
                    color: Color(0xffE7EAEF),
                    elevation: 0,
                    iconTheme: IconThemeData(
                      color: Color.fromARGB(255, 26, 25, 25),
                    )),
                fontFamily: GoogleFonts.tenorSans().fontFamily),
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: HomePage(),
            ),
          );
        },
      ),
    );
  }
}
