import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ghura_ghure/widgets/violetButton.dart';

class PrivacyPolice extends StatelessWidget {
  const PrivacyPolice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: EdgeInsets.only(left: 30.w,right: 30.w,top: 20.h),
        child: (
        Column(
          children: [
            Expanded(child: Container(color:Colors.amber ,)),
            VioletButton("Agree",(){},),


          ],

        )
        ),
      ),
    );
  }
}
