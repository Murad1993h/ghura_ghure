import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ghura_ghure/styles/style.dart';
import 'package:ghura_ghure/ui/route/route.dart';
import 'package:ghura_ghure/widgets/violetButton.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../const/app_colors.dart';

class UserForm extends StatelessWidget {




  TextEditingController _namrController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _addressrController = TextEditingController();

  Rx<TextEditingController> _dobController = TextEditingController().obs;

  Rx<DateTime> selecteDate = DateTime.now().obs;

  _selectDate(BuildContext context) async {
    final selected = await showDatePicker(
      context: context,
      initialDate: selecteDate.value,


      firstDate: DateTime(2000),
      lastDate: DateTime(2050),
    );
    if (selecteDate != null && selected != selecteDate) {
      _dobController.value.text = " ${selecteDate}-${selecteDate}";
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tell Us More About You",
                  style: TextStyle(
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.violetColor),
                ),
                Text(
                  "We will not share your information outside this application.",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Formfield(_namrController, TextInputType.name, 'name'),
                Formfield(_phoneController, TextInputType.number, 'numbar'),
                Formfield(_addressrController, TextInputType.text, 'address'),
                Obx(() => TextFormField(
                  controller: _dobController.value,
                  readOnly: true,
                  // keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Date of birth",
                    hintStyle: TextStyle(
                      fontSize: 15.sp,
                    ),
                    suffixIcon: IconButton(
                      onPressed: ()=>_selectDate(context),
                      icon: Icon(Icons.calendar_today),
                    ),

                  ),
                ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                // Here, default theme colors are used for activeBgColor, activeFgColor, inactiveBgColor and inactiveFgColor
                ToggleSwitch(
                  initialLabelIndex: 0,
                  totalSwitches: 3,
                  labels: ['Male', 'Female', ],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
                
                SizedBox(
                  height: 20.h,
                ),
                VioletButton("Submit",
                    ()=>Get.toNamed(privacyPolicy))
              ],
            ),
          ),
        ),

      ),
    );
  }
}

Widget Formfield(controller, inputType, hint) {
  return TextFormField(
    controller: controller,
    keyboardType: inputType,
    decoration: AppStyles().textFieldDecoration(hint),
  );
}
