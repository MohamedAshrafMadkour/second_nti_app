import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/constant/app_icons.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomFavAndRate extends StatelessWidget {
  const CustomFavAndRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(AppIcons.iconsUnFavIcon, height: 18),
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.1),
        Row(
          children: [
            const Icon(Icons.star, color: Colors.amber, size: 20),
            const SizedBox(width: 6),
            Text(
              '3.7',
              style: AppStyles.textMedium10(
                context,
              ).copyWith(color: AppColors.blackColor00),
            ),
          ],
        ),
      ],
    );
  }
}
