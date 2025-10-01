import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ActiveHour extends StatelessWidget {
  const ActiveHour({required this.hour, super.key});
  final int hour;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: const ShapeDecoration(
        color: Color(0xff0EBE7F),
        shape: OvalBorder(),
      ),
      child: Center(
        child: Text(
          '$hour:00 \n\t\tAM',
          style: AppStyles.textMedium12(
            context,
          ).copyWith(fontSize: 13, color: Colors.white),
        ),
      ),
    );
  }
}
