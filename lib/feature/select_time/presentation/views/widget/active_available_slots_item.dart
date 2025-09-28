import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ActiveAvailableSlotsItem extends StatelessWidget {
  const ActiveAvailableSlotsItem({required this.hour, super.key});
  final int hour;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff0EBE7F),

        borderRadius: BorderRadius.circular(6),
      ),
      child: Center(
        child: Text(
          '$hour:00 PM',
          style: AppStyles.textMedium12(
            context,
          ).copyWith(fontSize: 13, color: Colors.white),
        ),
      ),
    );
  }
}
