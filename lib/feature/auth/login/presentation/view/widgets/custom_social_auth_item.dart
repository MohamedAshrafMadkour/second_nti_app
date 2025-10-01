import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSocialAuthItem extends StatelessWidget {
  const CustomSocialAuthItem({
    required this.image,
    required this.title,
    super.key,
  });
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        shadows: const [BoxShadow(color: Color(0x0F000000), blurRadius: 22)],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 40),
        child: Row(
          children: [
            SvgPicture.asset(image, fit: BoxFit.fill),
            const SizedBox(width: 12),
            Text(
              title,
              style: AppStyles.textLight16(
                context,
              ).copyWith(color: AppColors.brownColor67),
            ),
          ],
        ),
      ),
    );
  }
}
