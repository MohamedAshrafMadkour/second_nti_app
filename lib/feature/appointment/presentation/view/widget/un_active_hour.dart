import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class UnActiveHour extends StatelessWidget {
  const UnActiveHour({required this.hour, super.key});
  final int hour;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: const ShapeDecoration(
        color: Color.fromRGBO(14, 190, 126, 0.1),

        shape: OvalBorder(),
      ),

      child: Center(
        child: Text(
          '$hour:00 \n\t\tAM',
          style: AppStyles.textMedium12(
            context,
          ).copyWith(color: AppColors.greenColor0E),
        ),
      ),
    );
  }
}
