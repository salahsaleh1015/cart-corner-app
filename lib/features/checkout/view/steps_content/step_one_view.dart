import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/responsive/responsive.dart';
import '../../../../core/style/colors.dart';
import '../../../../widgets/custom_text.dart';

class StepOneView extends StatefulWidget {
  StepOneView({Key? key}) : super(key: key);

  @override
  State<StepOneView> createState() => _StepOneViewState();
}

class _StepOneViewState extends State<StepOneView> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: 'Standard Delivery',
          fontWieght: FontWeight.bold,
          fontSize: isLandscape(context) ? 20.sp : 15.sp,
          color: kTextColor,
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: CustomText(
                  color: kTextColor,
                  fontWieght: FontWeight.normal,
                  fontSize: isLandscape(context) ? 10.sp : 15.sp,
                  text:   'Order will be delivered between 3 - 5 business days',

                )),
            Radio(
                activeColor: kPrimaryColor,
                value: 1,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value!;
                  });
                })
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomText(
          text:  'Next Day Delivery',
          fontWieght: FontWeight.bold,
          fontSize: isLandscape(context) ? 20.sp : 15.sp,
          color: kTextColor,
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: CustomText(
                  text:  'Place your order before 6pm and your items will be delivered the next day',
                  fontWieght: FontWeight.normal,
                  fontSize: isLandscape(context) ? 10.sp : 15.sp,
                  color: kTextColor,
                )),
            Radio(
                activeColor: kPrimaryColor,
                value: 2,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value!;
                  });
                })
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomText(
          text: 'Nominated Delivery',
          fontWieght: FontWeight.bold,
          fontSize: isLandscape(context) ? 20.sp : 15.sp,
          color: kTextColor,
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: CustomText(
                  color: kTextColor,
                  fontSize: isLandscape(context) ? 10.sp : 15.sp,
                  fontWieght:FontWeight.normal ,

                  text:
                  'Pick a particular date from the calendar and order will be delivered on selected date',

                )),
            Radio(
                activeColor: kPrimaryColor,
                value: 3,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value!;
                  });
                })
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}