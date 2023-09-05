import 'package:cart_corner_app/core/router/app_router.dart';
import 'package:cart_corner_app/features/auth/view/login_screen.dart';
import 'package:cart_corner_app/platforms/desktop.dart';
import 'package:cart_corner_app/platforms/mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/auth/view/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if(constraints.minWidth<=560){
                return const Mobile();
              }else{
                return const DeskTop();
              }
            },
          ),
          onGenerateRoute: AppRouter().onGenerateRoute,
        );
      },
    );
  }
}
