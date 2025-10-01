import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomServiceItem extends StatelessWidget {
  const CustomServiceItem({
    required this.title,
    required this.index,
    super.key,
  });
  final String title;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '$index.   ',
                style: AppStyles.textMedium13(
                  context,
                ).copyWith(color: AppColors.greenColor0E),
              ),

              TextSpan(
                text: title,
                style: AppStyles.textRegular13(
                  context,
                ).copyWith(color: AppColors.brownColor67),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
