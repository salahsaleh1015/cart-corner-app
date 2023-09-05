import 'package:cart_corner_app/core/router/screens_names.dart';
import 'package:flutter/material.dart';
import 'package:cart_corner_app/core/style/colors.dart';
import 'package:cart_corner_app/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'component/custom_button.dart';
import 'component/custom_form_field.dart';
class DeskTopRegister extends StatelessWidget {
  const DeskTopRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Row(
        children: [
          Expanded(
              flex: 3,
              child: SizedBox(
                height: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                          text: "create Your Account ",
                          fontSize: 20.sp,
                          color: kTextColor,
                          fontWieght: FontWeight.bold),

                      SizedBox(
                        height: 20.h,
                      ),

                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CustomFormField(
                          hint: "name",
                        ),
                      ),


                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CustomFormField(
                          hint: "email",
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CustomFormField(
                          hint: "password",
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomButton(
                        fontSize: 15.sp,
                        onTap: (){},
                        textColor: kBackGroundColor,
                        buttonColor: kPrimaryColor,
                        height: 60.h,
                        width: MediaQuery.of(context).size.width * 0.4,
                        text: "register",
                      ),
                    ],
                  ),
                ),
              )),
          Expanded(
              flex: 2,
              child: Container(
                height: double.infinity,
                color: kPrimaryColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                        text: "I Have an account",
                        fontSize: 23.sp,
                        color: kTextDarkColor,
                        fontWieght: FontWeight.bold),
                    SizedBox(
                      height: 20.h,
                    ),

                    CustomButton(
                      fontSize: 15.sp,
                      onTap: (){
                        Navigator.pushNamed(context, ScreensNames.loginDeskTop);

                      },
                      buttonColor: kBackGroundColor,
                      textColor: kTextColor,
                      text: "Sign IN",
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: 60,
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
