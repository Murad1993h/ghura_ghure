

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ghura_ghure/const/app_colors.dart';
import 'package:ghura_ghure/styles/style.dart';
import 'package:ghura_ghure/ui/route/route.dart';

class OnboardingScreen extends StatelessWidget {
  List<String> _lottifile = [
    'assets/files/welcome.png',
    'assets/files/onbording.png',
    'assets/files/onbording1.png',

  ];
  List<String> _title = [
    'Welcome',
    'Categories',
    'Support',

  ];
  List<String> _description = [
    'Lorem Ipsum is simply dummy text of the printing and typ',
    'Lorem Ipsum is simply dummy text of the printing and typ',
    'Lorem Ipsum is simply dummy text of the printing and typ',

  ];
  RxInt _currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(32.w),
        child: Column(
          children: [
            Obx(() => Expanded(flex: 2,
                child: Image.asset(
                    _lottifile[_currentIndex.toInt()],)),),
            Expanded(flex: 1,





                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.scaffoldColor,
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(4.0, 4.0),
                          blurRadius: 10,
                          spreadRadius: 1.0),
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(-4.0, -4.0),
                          blurRadius: 5,
                          spreadRadius: 1.0)
                    ],
                  ),

                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(() => Text('${_title[_currentIndex.toInt()]}',
                              style: AppStyles().myTextStyle),),
                          Text('${_description[_currentIndex.toInt()]}'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Obx(() =>  DotsIndicator(dotsCount: _lottifile.length,
                                position: _currentIndex.toDouble(),
                                decorator: DotsDecorator(),),),
                              InkWell(
                                onTap: (){
                                  //_currentIndex + 1;
                                  //if(_currentIndex==2
                                  if(_currentIndex== _title.length-1){
                                    Get.toNamed(signup);
                                    //print("Finish");
                                    // Get.toNamed(sinUp);

                                  }
                                  else{_currentIndex + 1;}
                                },
                                child: Container(
                                  height: 37.h,
                                  width: 37.w,
                                  decoration: BoxDecoration(
                                      color: AppColors.scaffoldColor,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black,
                                          offset: Offset(4.0, 4.0),
                                          blurRadius: 10,
                                          spreadRadius: 1.0,
                                        )
                                      ]
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ))),


          ],
        ),
      ),

    );
  }
}


