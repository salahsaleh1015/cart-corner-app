import 'package:cart_corner_app/core/responsive/responsive.dart';
import 'package:cart_corner_app/features/cart/cart_view_model/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/style/colors.dart';
import '../../../../widgets/custom_text.dart';

class StepThreeView extends StatelessWidget {
  String streetOne , streetTwo, city;
  StepThreeView({ required this.streetOne, required this.streetTwo, required this.city});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCheckOutList(),
        SizedBox(
          height: 15.h,
        ),
        CustomText(
          color: kTextColor,
          fontSize: 20.sp,
          fontWieght: FontWeight.bold,
          text: 'Shipping Address',
        ),
        SizedBox(
          height: 30.h,
        ),
        Row(
          children: [
            Expanded(
              child: CustomText(
                color: kTextColor,
                fontSize: 16.sp,
                fontWieght: FontWeight.normal,
                text:
                " $streetOne $streetTwo $city",
              ),
            ),
            Image.asset("assets/images/Checkbox.png")
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {},
          child: CustomText(
            text: 'change',
            fontWieght: FontWeight.normal,
            fontSize: 18.sp,
            color: kPrimaryColor,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }

  Widget _buildCheckOutList() => BlocConsumer<CartCubit, CartStates>(
    listener: (context, state) {
      // TODO: implement listener
    },
    builder: (context, state) {
      var cubit = CartCubit.get(context);
      return SizedBox(
        height: 200.h,
        child: ListView.separated(
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 120.h,
                  width: 120.w,
                  child: Image.asset(cubit.cartProductModel[index].image,
                      fit: BoxFit.cover),
                ),
                CustomText(
                    text: cubit.cartProductModel[index].name,
                    fontSize: isLandscape(context)?15:20.sp,
                    color: kTextColor,
                    fontWieght: FontWeight.normal),
                CustomText(
                    text: "\$${cubit.cartProductModel[index].price}",
                    fontSize: isLandscape(context)?12:18.sp,
                    color: kPrimaryColor,
                    fontWieght: FontWeight.normal),
              ],
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 10,
            );
          },
          itemCount: cubit.cartProductModel.length,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
        ),
      );
    },
  );
}