import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomPriceText extends StatelessWidget {
  const CustomPriceText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: '\$ ',
            style: AppStyles.textMedium16(
              context,
            ).copyWith(color: AppColors.greenColor0E),
          ),
          TextSpan(
            text: '28.00/hr',
            style: AppStyles.textLight16(
              context,
            ).copyWith(color: AppColors.brownColor67),
          ),
        ],
      ),
    );
  }
}
