import 'package:dalel_app1/core/utils/app_color.dart';
import 'package:dalel_app1/core/utils/app_strings.dart';
import 'package:dalel_app1/core/utils/constans.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3) ,(){
      GoRouter.of(context).pushReplacement(AppStrings.onBordingRoute);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.offWhite,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Center(child: Image.asset(CustomImageAssets.dalelLogo))],
          )),
    );
  }
}
