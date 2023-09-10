import 'package:cart_corner_app/core/models/product_model.dart';
import 'package:cart_corner_app/core/style/colors.dart';
import 'package:cart_corner_app/features/cart/model/cart_product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/custom_text.dart';
import '../../cart/cart_view_model/cart_cubit.dart';

class DetailsMobileView extends StatelessWidget {
  final Product product;

  const DetailsMobileView({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              SizedBox(
                width: double.infinity,
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.4,
                child: Image.asset(product.productImage),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomText(
                text: product.productName,
                fontSize: 30.sp,
                color: kTextColor,
                fontWieght: FontWeight.bold,
              ),
              SizedBox(
                height: 70.h,
              ),
              CustomText(
                text: product.productDescription,
                fontSize: 20.sp,
                color: kTextColor,
                fontWieght: FontWeight.normal,
              ),
              SizedBox(
                height: 70.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          text: "Product price",
                          fontSize: 20.sp,
                          color: kTextColor,
                          fontWieght: FontWeight.normal),
                      CustomText(
                          text: product.productPrice,
                          fontSize: 20.sp,
                          color: kPrimaryColor,
                          fontWieght: FontWeight.normal),
                    ],
                  ),
                  BlocBuilder<CartCubit, CartStates>(
                    builder: (context, state) {
                      var cubit = CartCubit.get(context);
                      return InkWell(
                        onTap: () {
                          cubit.addProduct(
                              CartProductModel(
                                  name: product.productName,
                                  image: product.productImage,
                                  price: product.productPrice,
                                  quantity: product.quantity,
                                  productId: product.productId
                              ),
                              context);

                        },
                        child: Container(
                          width: 100.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: Center(
                            child: CustomText(
                              text: "ADD",
                              fontSize: 20.h,
                              color: kBackGroundColor,
                              fontWieght: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
