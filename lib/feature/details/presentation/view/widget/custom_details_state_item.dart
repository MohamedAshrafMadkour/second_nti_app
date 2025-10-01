import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/feature/details/data/model/state_model.dart';
import 'package:flutter/material.dart';

class CustomDetailsStateItem extends StatelessWidget {
  const CustomDetailsStateItem({required this.stateModel, super.key});
  final StateModel stateModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color.fromRGBO(202, 202, 202, 0.12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        child: Column(
          children: [
            Text(
              stateModel.value,
              style: AppStyles.textMedium18(
                context,
              ).copyWith(color: AppColors.brownColor33),
            ),
            Text(
              stateModel.title,
              style: AppStyles.textLight14(
                context,
              ).copyWith(color: AppColors.brownColor67),
            ),
          ],
        ),
      ),
    );
  }
}
