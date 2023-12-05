import 'package:dalel_app1/core/utils/app_strings.dart';
import 'package:dalel_app1/feautures/on_boarding/presentation/widget/custom_nav_bar.dart';
import 'package:dalel_app1/feautures/on_boarding/presentation/widget/get_button.dart';
import 'package:dalel_app1/feautures/on_boarding/presentation/widget/on_boarding_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _pageController = PageController(initialPage: 0);

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.w),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              SizedBox(
                height: 20.h,
              ),
              CustomNavBar(onTab: () {
                GoRouter.of(context).pushReplacement(AppStrings.singUpRoute);
              }),
              OnBoardingBody(
                onChange: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                pageController: _pageController,
              ),
              SizedBox(height: 15.h),
              GetButton(
                  controller: _pageController, currentIndex: currentIndex),
            ],
          ),
        ),
      ),
    );
  }
}
