import 'package:doctor_app/core/constant/app_images.dart';
import 'package:flutter/material.dart';

class CustomBackGround extends StatelessWidget {
  const CustomBackGround({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.asset(AppImages.imagesSplashBackground, fit: BoxFit.cover),
    );
  }
}
