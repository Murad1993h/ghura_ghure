import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ghura_ghure/const/app_colors.dart';
import 'package:ghura_ghure/const/app_string.dart';
import 'package:ghura_ghure/ui/route/route.dart';
import 'package:ghura_ghure/views/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(420, 926),
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppString.appName,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: GoogleFonts.poppinsTextTheme(
                Theme.of(context).textTheme.apply(),

            ),
            scaffoldBackgroundColor: AppColors.scaffoldColor
          ),
          initialRoute: splash,
          getPages:getPage,


          home: SplashScreen(),
        );
      },
    );
  }
}
