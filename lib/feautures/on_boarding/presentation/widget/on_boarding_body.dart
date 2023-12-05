import 'package:dalel_app1/core/utils/app_text_styles.dart';
import 'package:dalel_app1/feautures/on_boarding/data/models/on_boarding_model.dart';
import 'package:dalel_app1/feautures/on_boarding/presentation/widget/custom_smooth_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingBody extends StatelessWidget {
  final PageController pageController;

  final Function(int)? onChange;

  const OnBoardingBody({
    super.key,
    required this.pageController,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450.h,
      child: PageView.builder(
        onPageChanged: onChange,
        controller: pageController,
        physics: const BouncingScrollPhysics(),
        itemCount: onBoardingData.length,
        itemBuilder: (context, index) => Column(
          children: [
            Container(
              height: 290.h,
              width: 343.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(onBoardingData[index].imagePath))),
            ),
            SizedBox(
              height: 18.h,
            ),
            CustomSmoothIndicator(controller: pageController),
            SizedBox(
              height: 6.h,
            ),
            Text(
              onBoardingData[index].title,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.clip,
              style: CustomTextStyles.text24.copyWith(fontSize: 24.sp),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              onBoardingData[index].subTitle,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: CustomTextStyles.text16.copyWith(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
