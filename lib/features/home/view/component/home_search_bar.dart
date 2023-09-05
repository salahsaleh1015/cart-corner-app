import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/style/colors.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return    Center(
      child: Container(
        width: MediaQuery.of(context).size.width*0.84,
        height: 50.h,
        decoration: BoxDecoration(
          color:kGrayLightDegree,
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search,size: 25.r,color: kTextColor),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
