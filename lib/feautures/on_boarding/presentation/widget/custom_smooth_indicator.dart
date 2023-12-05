import 'package:dalel_app1/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothIndicator extends StatelessWidget {
  final PageController controller;
  const CustomSmoothIndicator({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller, // PageController
      count: 3,
      effect: ExpandingDotsEffect(
          dotHeight: 7.h,
          dotWidth: 10.w,
          activeDotColor: AppColors.primaryColor),
    );
  }
}
