import 'package:doctor_app/core/constant/app_icons.dart';
import 'package:doctor_app/core/constant/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/custom_live_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomLiveItem extends StatelessWidget {
  const CustomLiveItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, CustomLiveDetails.routeName);
      },
      child: Stack(
        children: [
          Container(
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            child: Image.asset(AppImages.imagesTest6),
          ),
          Positioned(
            right: 30,
            top: 30,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: ShapeDecoration(
                color: const Color(0xFFF9002F),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 5.60,
                    height: 5.60,
                    decoration: const ShapeDecoration(
                      color: Colors.white,
                      shape: OvalBorder(),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'LIVE',
                    textAlign: TextAlign.center,
                    style: AppStyles.textRegular7(
                      context,
                    ).copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 6,
            top: 6,
            bottom: 0,
            left: 0,
            child: Center(child: SvgPicture.asset(AppIcons.iconsWatchIcon)),
          ),
        ],
      ),
    );
  }
}
