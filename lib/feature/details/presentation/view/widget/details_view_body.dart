import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/constant/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/core/widget/custom_back_ground.dart';
import 'package:doctor_app/feature/details/presentation/view/widget/custom_details_app_bar.dart';
import 'package:doctor_app/feature/details/presentation/view/widget/custom_details_item.dart';
import 'package:doctor_app/feature/details/presentation/view/widget/custom_details_row_state.dart';
import 'package:doctor_app/feature/details/presentation/view/widget/custom_service_item_list.dart';
import 'package:flutter/material.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CustomBackGround(),
        const CustomDetailsAppBar(),
        Positioned.fill(
          top: 70,
          right: 20,
          left: 20,

          child: Column(
            children: [
              const SizedBox(height: 34),
              const CustomDetailsItem(),
              const SizedBox(height: 24),
              const CustomDetailsRowState(),
              const SizedBox(height: 37),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Services',
                  style: AppStyles.textMedium18(
                    context,
                  ).copyWith(color: AppColors.brownColor33),
                ),
              ),
              const SizedBox(height: 17),
              const CustomServiceItemList(),
              const SizedBox(height: 16),
              Expanded(
                child: Image.asset(AppImages.imagesMap, fit: BoxFit.cover),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ],
    );
  }
}
