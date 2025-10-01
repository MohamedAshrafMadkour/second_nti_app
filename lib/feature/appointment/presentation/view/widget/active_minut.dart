import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ActiveMinut extends StatelessWidget {
  const ActiveMinut({required this.minut, super.key});
  final int minut;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: const ShapeDecoration(
        color: Color(0xff0EBE7F),
        shape: OvalBorder(),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '${minut * 5}',
            style: AppStyles.textMedium12(
              context,
            ).copyWith(fontSize: 13, color: Colors.white),
          ),
          const SizedBox(height: 2),
          Text(
            'Minit',
            style: AppStyles.textMedium12(
              context,
            ).copyWith(fontSize: 13, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
