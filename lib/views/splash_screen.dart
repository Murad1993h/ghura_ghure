import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ghura_ghure/const/app_string.dart';
import 'package:ghura_ghure/styles/style.dart';
import 'package:ghura_ghure/ui/route/route.dart';

class SplashScreen extends StatefulWidget {


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    Future.delayed(Duration(seconds: 3), () => Get.toNamed(onboarding));
    super.initState();
  }



  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/logo/logo 1.png", height: 200.h,),
              Text(AppString.appName,
              style: AppStyles().myTextStyle,
              ),
            ],
          ),
        )

      ),
    );
  }
}
