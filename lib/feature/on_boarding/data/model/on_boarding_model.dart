import 'package:doctor_app/core/constant/app_images.dart';

class OnBoardingModel {
  final String image;
  final String title;
  final String description;

  OnBoardingModel({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    image: AppImages.imagesFirstOnBoardingImagePng,
    title: 'Find Trusted Doctors',
    description:
        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
  ),
  OnBoardingModel(
    image: AppImages.imagesSecondOnboardingImage,
    title: 'Choose Best Doctors',
    description:
        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
  ),
  OnBoardingModel(
    image: AppImages.imagesThirdOnBoardingImage,
    title: 'Easy Appointments',
    description:
        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
  ),
];
