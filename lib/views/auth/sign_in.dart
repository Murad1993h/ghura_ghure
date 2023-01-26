import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ghura_ghure/styles/style.dart';
import 'package:ghura_ghure/views/auth/sign_in.dart';
import 'package:ghura_ghure/widgets/violetButton.dart';

import '../../const/app_colors.dart';

class SignIn extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 80.h),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "LogIn \nTo your account",
                  style: TextStyle(
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.violetColor),
                ),

                SizedBox(
                  height: 80.h,
                ),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration:
                  AppStyles().textFieldDecoration("E-mail Address "),
                ),
                TextFormField(
                  controller: _passwordController,
                  keyboardType: TextInputType.text,
                  decoration:
                  AppStyles().textFieldDecoration("Enter your Password "),
                ),
                SizedBox(
                  height: 40.h,
                ),
                VioletButton("Login",(){} , ),
                SizedBox(
                  height: 10.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "-or-",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/icons/search 1.png")),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/icons/facebook 1.png"))
                  ],
                ),
                SizedBox(
                  height:10.h,
                ),
                RichText(text: TextSpan(
                    text: "Dont have Registerd yet?  ",
                    style: TextStyle(fontSize: 18.sp,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                    children: [
                      TextSpan(
                        text: "Sign Up",
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.violetColor
                        ),
                        recognizer: TapGestureRecognizer()..
                        onTap = ()=>Get.toNamed("Click"),

                      ),
                    ]

                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
