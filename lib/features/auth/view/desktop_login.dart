import 'package:cart_corner_app/core/router/screens_names.dart';
import 'package:cart_corner_app/core/style/colors.dart';
import 'package:cart_corner_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'component/custom_button.dart';
import 'component/custom_form_field.dart';

class DesktopLogin extends StatelessWidget {
  const DesktopLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          text: "Login To Your Account ",
                          fontSize: 20.sp,
                          color: kTextColor,
                          fontWieght: FontWeight.bold),
                      CustomText(
                          text: "Login using social network ",
                          fontSize: 10.sp,
                          color: kSecondaryColor,
                          fontWieght: FontWeight.normal),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 25.r,
                            backgroundColor: const Color(0xff38529a),
                            child: const Icon(FontAwesomeIcons.facebookF,
                                color: kTextDarkColor),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          CircleAvatar(
                            radius: 25.r,
                            backgroundColor: kPrimaryColor,
                            child: const Icon(FontAwesomeIcons.google,
                                color: kTextDarkColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 1.h,
                            width: 100.w,
                            color: kSecondaryColor,
                          ),
                          CustomText(
                              text: "OR",
                              fontSize: 5.sp,
                              color: kTextColor,
                              fontWieght: FontWeight.bold),
                          Container(
                            height: 1.h,
                            width: 100.w,
                            color: kSecondaryColor,
                          ),
                        ],
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
                        text: "log in",
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
                        text: "New Here ?",
                        fontSize: 23.sp,
                        color: kTextDarkColor,
                        fontWieght: FontWeight.bold),
                    CustomText(
                        text:
                            "Sign Up and discover a great amount of new opportunities",
                        fontSize: 8.sp,
                        color: kTextDarkColor,
                        fontWieght: FontWeight.normal),
                    SizedBox(
                      height: 30.h,
                    ),
                    CustomButton(
                      onTap: (){
                        Navigator.pushNamed(context, ScreensNames.registerDeskTop);
                      },
                      buttonColor: kBackGroundColor,
                      textColor: kTextColor,
                      text: "Sign Up",
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: 60,
                      fontSize: 15.sp,
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
