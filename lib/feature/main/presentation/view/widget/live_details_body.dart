import 'package:doctor_app/core/constant/app_images.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/custom_arrow_back.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/custom_live_details_comment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LiveDetailsBody extends StatelessWidget {
  const LiveDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(AppImages.imagesTest7, fit: BoxFit.cover),
        ),
        Positioned(
          top: 50,
          left: 20,
          right: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomArrowBack(),
              SvgPicture.asset(AppImages.imagesTest9, height: 20, width: 20),
            ],
          ),
        ),
        const Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: CustomLiveDetailsComment(),
        ),
      ],
    );
  }
}
