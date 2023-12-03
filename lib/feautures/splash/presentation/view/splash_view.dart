import 'package:dalel_app1/core/utils/app_color.dart';
import 'package:dalel_app1/core/utils/constans.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.offWhite,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Center(child: Image.asset(ImageAppAssets.dalelLogo))],
          )),
    );
  }
}
