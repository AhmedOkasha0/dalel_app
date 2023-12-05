import 'package:dalel_app1/core/utils/app_color.dart';
import 'package:dalel_app1/core/utils/app_strings.dart';
import 'package:dalel_app1/core/widgets/custom_button.dart';
import 'package:dalel_app1/feautures/on_boarding/data/models/on_boarding_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class GetButton extends StatelessWidget {
  final int currentIndex;
  final PageController controller;
  const GetButton(
      {super.key, required this.controller, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardingData.length - 1) {
      return Column(
        children: [
          SizedBox(
            height: 50.h,
            width: double.infinity,
            child: CustomButton(
              color: AppColors.primaryColor,
              text: AppStrings.creatAccount,
              onPressed: () {
                GoRouter.of(context).pushReplacement(AppStrings.singUpRoute);
              },
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).pushReplacement(AppStrings.loginRoute);
            },
            child: const Text(AppStrings.login),
          )
        ],
      );
    } else {
      return SizedBox(
        height: 50.h,
        child: CustomButton(
          text: AppStrings.next,
          onPressed: () {
            controller.nextPage(
                duration: const Duration(milliseconds: 200),
                curve: Curves.bounceIn);
          },
        ),
      );
    }
  }
}
