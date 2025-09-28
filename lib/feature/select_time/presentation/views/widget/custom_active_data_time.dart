import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomActiveDataTime extends StatelessWidget {
  const CustomActiveDataTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: AppColors.greenColor0E,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: AppColors.greenColor0E),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'Today, 23 Feb',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: AppStyles.textRegular16(
                  context,
                ).copyWith(color: AppColors.whiteColor),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'No slots available',
              textAlign: TextAlign.center,
              style: AppStyles.textLight10(
                context,
              ).copyWith(color: AppColors.whiteColorF9),
            ),
          ],
        ),
      ),
    );
  }
}
