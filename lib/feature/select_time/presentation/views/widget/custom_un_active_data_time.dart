import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomUnActiveDataTime extends StatelessWidget {
  const CustomUnActiveDataTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0x19677294)),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
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
                ).copyWith(color: AppColors.brownColor33),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'No slots available',
              textAlign: TextAlign.center,
              style: AppStyles.textLight10(
                context,
              ).copyWith(color: AppColors.brownColor67),
            ),
          ],
        ),
      ),
    );
  }
}
