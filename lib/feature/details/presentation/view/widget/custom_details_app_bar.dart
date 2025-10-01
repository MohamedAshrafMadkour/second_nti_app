import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/constant/app_icons.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/custom_arrow_back.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDetailsAppBar extends StatelessWidget {
  const CustomDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50,
      left: 10,
      right: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CustomArrowBack(),
              const SizedBox(width: 20),
              Text(
                'Doctor Details',
                style: AppStyles.textRegular18(
                  context,
                ).copyWith(color: AppColors.brownColor22),
              ),
            ],
          ),
          SvgPicture.asset(AppIcons.iconsSearchIcon, height: 18, width: 18),
        ],
      ),
    );
  }
}
