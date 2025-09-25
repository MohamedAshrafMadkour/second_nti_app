import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/constant/app_icons.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSplashLogo extends StatelessWidget {
  const CustomSplashLogo({
    required this.logoSlide,
    required this.logoScale,
    required this.textFade,
    super.key,
  });
  final Animation<Offset> logoSlide;
  final Animation<double> logoScale;
  final Animation<double> textFade;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SlideTransition(
            position: logoSlide,
            child: ScaleTransition(
              scale: logoScale,
              child: SvgPicture.asset(AppIcons.iconsSplashIcon),
            ),
          ),
          const SizedBox(height: 20),
          FadeTransition(
            opacity: textFade,
            child: Text(
              'Doctor Hunt',
              textAlign: TextAlign.center,
              style: AppStyles.textBold25(
                context,
              ).copyWith(color: AppColors.brownColor22),
            ),
          ),
        ],
      ),
    );
  }
}
