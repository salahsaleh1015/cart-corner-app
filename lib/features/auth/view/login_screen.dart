import 'package:cart_corner_app/core/router/screens_names.dart';
import 'package:cart_corner_app/features/auth/view/component/custom_form_field.dart';
import 'package:cart_corner_app/features/auth/view/component/custom_social_button.dart';
import 'package:cart_corner_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/responsive/responsive.dart';
import '../../../core/style/colors.dart';
import 'component/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                      text: "Wellcome,",
                      fontSize: 35.sp,
                      color: kDarkBackGroundColor,
                      fontWieght: FontWeight.bold),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, ScreensNames.registerMobile);
                      },
                      child: CustomText(
                        text: "Sign Up".toUpperCase(),
                        fontWieght: FontWeight.normal,
                        fontSize: 20.sp,
                        color: kPrimaryColor,
                      ))
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomText(
                  text: "Sign In To Continue ",
                  fontSize: 20.sp,
                  color:kSecondaryColor,
                  fontWieght: FontWeight.normal),
              SizedBox(
                height: 35.h,
              ),
              CustomText(
                  text: "email",
                  fontSize: 15.sp,
                  color: kDarkBackGroundColor,
                  fontWieght: FontWeight.normal),
              SizedBox(
                height: 10.h,
              ),
              const CustomFormField(
                hint: "...",
              ),
              SizedBox(
                height: 50.h,
              ),
              CustomText(
                  text: "password",
                  fontSize: 15.sp,
                  color: kDarkBackGroundColor,
                  fontWieght: FontWeight.normal),
              SizedBox(
                height: 10.h,
              ),
              const CustomFormField(
                hint: "******",
              ),
              SizedBox(
                height: 50.h,
              ),
               CustomButton(
                 fontSize: 15.sp,
                 onTap: (){
                   Navigator.pushNamed(context, ScreensNames.homeMobile);
                 },
                 textColor: kBackGroundColor,
                 buttonColor: kPrimaryColor,
                 height: isLandscape(context)?MediaQuery.of(context).size.height*0.22 :MediaQuery.of(context).size.height*0.08,
                 width: MediaQuery.of(context).size.width*0.8,
                text: "log in",
              ),
              SizedBox(height: 10.h,),
              Center(
                child: CustomText(
                    text: "-or-".toUpperCase(),
                    fontSize: 30.sp,
                    color: kDarkBackGroundColor,
                    fontWieght: FontWeight.normal),
              ),
              SizedBox(height: 10.h,),
               CustomSocialButton(
                onTap: (){
                  Navigator.pushNamed(context, ScreensNames.homeMobile);
                },
                text:"Sign In With Facebook",
                image:"assets/images/face_logo.png" ,
              ),
              SizedBox(height: 10.h,),
               CustomSocialButton(
                 onTap: (){
                   Navigator.pushNamed(context, ScreensNames.homeMobile);
                 },
                text:"Sign In With Google",
                image:"assets/images/icons8_Google_2.png" ,
              ),


            ],
          ),
        ),
      ),
    );
  }
}
