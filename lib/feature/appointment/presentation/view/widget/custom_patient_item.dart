import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/constant/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomPatientItem extends StatelessWidget {
  const CustomPatientItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(AppImages.imagesTest15, fit: BoxFit.fill),
        const SizedBox(height: 7),
        Text(
          'My Self',
          textAlign: TextAlign.center,
          style: AppStyles.textRegular14(
            context,
          ).copyWith(color: AppColors.brownColor67),
        ),
      ],
    );
  }
}
