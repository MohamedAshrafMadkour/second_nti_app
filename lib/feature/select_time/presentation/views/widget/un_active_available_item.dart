import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class UnActiveAvailableSlotsItem extends StatelessWidget {
  const UnActiveAvailableSlotsItem({required this.hour, super.key});
  final int hour;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.greenColor0E.withOpacity(.1),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Center(
        child: Text(
          '$hour:00 PM',
          style: AppStyles.textMedium12(
            context,
          ).copyWith(color: AppColors.greenColor0E),
        ),
      ),
    );
  }
}
