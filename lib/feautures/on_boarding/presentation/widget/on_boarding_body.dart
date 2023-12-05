import 'package:dalel_app1/core/utils/app_text_styles.dart';
import 'package:dalel_app1/feautures/on_boarding/data/models/on_boarding_model.dart';
import 'package:dalel_app1/feautures/on_boarding/presentation/widget/custom_smooth_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingBody extends StatelessWidget {
  final PageController pageController;
  final String imagePath;
  final String title;
  final String subTitle;

  const OnBoardingBody(
      {super.key,
      required this.pageController,
      required this.imagePath,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      child: PageView.builder(
        controller: pageController,
        physics: const BouncingScrollPhysics(),
        itemCount: onBoardingData.length,
        itemBuilder: (context, index) => Column(
          children: [
            Container(
              height: 290.h,
              width: 343.w,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(onBoardingData[index].imagePath))
              ),
            
            ),
            SizedBox(
              height: 24.h,
            ),
            CustomSmoothIndicator(controller: pageController),
            SizedBox(
              height: 6.h,
            ),
            Text(onBoardingData[index].title,textAlign: TextAlign.center,style: CustomTextStyles.text24.copyWith(fontSize: 24.sp),),
            SizedBox(
              height: 16.h,
            ),
            Text(onBoardingData[index].subTitle,textAlign: TextAlign.center,style: CustomTextStyles.text16.copyWith(fontSize: 16),),
          ],
        ),
      ),
    );
  }
}
