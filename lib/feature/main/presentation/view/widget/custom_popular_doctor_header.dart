import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomHomeSectionHeader extends StatelessWidget {
  const CustomHomeSectionHeader({required this.headerTitle, super.key});
  final String headerTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          headerTitle,
          style: AppStyles.textMedium18(
            context,
          ).copyWith(color: AppColors.brownColor33),
        ),

        Row(
          children: [
            Text(
              'See All',
              style: AppStyles.textLight12(
                context,
              ).copyWith(color: AppColors.brownColor67),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: AppColors.brownColor67,
              size: 12,
            ),
          ],
        ),
      ],
    );
  }
}
