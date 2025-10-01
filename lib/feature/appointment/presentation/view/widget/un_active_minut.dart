import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class UnActiveMinut extends StatelessWidget {
  const UnActiveMinut({required this.minut, super.key});
  final int minut;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: const ShapeDecoration(
        color: Color.fromRGBO(14, 190, 126, 0.1),
        shape: OvalBorder(),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '${minut * 5}',
            style: AppStyles.textMedium12(
              context,
            ).copyWith(color: AppColors.greenColor0E),
          ),
          const SizedBox(height: 2),
          Text(
            'Minit',
            style: AppStyles.textMedium12(
              context,
            ).copyWith(color: AppColors.greenColor0E),
          ),
        ],
      ),
    );
  }
}
