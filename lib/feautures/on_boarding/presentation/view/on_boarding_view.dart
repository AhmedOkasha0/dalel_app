import 'package:dalel_app1/core/utils/constans.dart';
import 'package:dalel_app1/feautures/on_boarding/presentation/widget/on_boarding_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  final PageController _pageController=PageController(initialPage: 0);
  List<String> imagePath = [
    CustomImageAssets.firstOnBoardingImage,
    CustomImageAssets.secOnBoardingImage,
    CustomImageAssets.thirdOnBoardingImage
  ];
  OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            OnBoardingBody(
              pageController: _pageController,
              
                imagePath: CustomImageAssets.firstOnBoardingImage,
                title: "title",
                subTitle: "subTitle")
          ],
        ),
      ),
    );
  }
}
