import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/feature/on_boarding/data/model/on_boarding_model.dart';
import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({required this.onBoardingModel, super.key});
  final OnBoardingModel onBoardingModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.4,
          onBoardingModel.image,
        ),
        const SizedBox(height: 85),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            onBoardingModel.title,
            textAlign: TextAlign.center,
            style: AppStyles.textMedium28(
              context,
            ).copyWith(color: AppColors.brownColor33),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              onBoardingModel.description,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              style: AppStyles.textRegular14(
                context,
              ).copyWith(color: AppColors.brownColorE5),
            ),
          ),
        ),
      ],
    );
  }
}
