import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/core/widget/custom_dot.dart';
import 'package:flutter/material.dart';

class CustomPatientStories extends StatelessWidget {
  const CustomPatientStories({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomDot(),
        const SizedBox(width: 4),
        Text(
          '87%',
          style: AppStyles.textLight11(
            context,
          ).copyWith(color: AppColors.brownColor67),
        ),
        const SizedBox(width: 17),
        const CustomDot(),
        const SizedBox(width: 4),
        Text(
          '69 Patient Stories',
          style: AppStyles.textRegular11(
            context,
          ).copyWith(color: AppColors.brownColor67),
        ),
      ],
    );
  }
}
