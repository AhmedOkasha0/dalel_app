import 'package:dalel_app1/core/utils/constans.dart';

class OnBoardingModel {
  final String imagePath;
  final String title;
  final String subTitle;

  OnBoardingModel(
      {required this.imagePath, required this.title, required this.subTitle});
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
      imagePath: CustomImageAssets.firstOnBoardingImage,
      title: "Explore The history with Dalel in a smart way",
      subTitle:
          "Using our app’s history libraries you can find many historical periods"),
  OnBoardingModel(
      imagePath: CustomImageAssets.secOnBoardingImage,
      title: "From every place on earth",
      subTitle: "A big variety of ancient places from all over the world"),
  OnBoardingModel(
      imagePath: CustomImageAssets.thirdOnBoardingImage,
      title: "Using modern AI technology for better user experience",
      subTitle:
          "AI provide recommendations and helps you to continue the search journey"),
];
