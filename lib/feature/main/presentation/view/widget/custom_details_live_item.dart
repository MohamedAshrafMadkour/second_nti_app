import 'package:doctor_app/core/constant/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomDetailsLiveItem extends StatelessWidget {
  const CustomDetailsLiveItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(AppImages.imagesTest10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ' Everhart Tween',
              style: AppStyles.textMedium18(
                context,
              ).copyWith(color: Colors.white),
            ),
            const SizedBox(height: 5),
            Text(
              'Thanks for shareing doctor',
              style: AppStyles.textLight14(
                context,
              ).copyWith(color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
