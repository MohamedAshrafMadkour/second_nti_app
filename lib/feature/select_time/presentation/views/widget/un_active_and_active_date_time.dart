import 'package:doctor_app/feature/select_time/presentation/views/widget/custom_active_data_time.dart';
import 'package:doctor_app/feature/select_time/presentation/views/widget/custom_un_active_data_time.dart';
import 'package:flutter/material.dart';

class UnActiveAndActiveDateTime extends StatelessWidget {
  const UnActiveAndActiveDateTime({required this.isActive, super.key});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: const CustomUnActiveDataTime(),
      secondChild: const CustomActiveDataTime(),
      crossFadeState: isActive
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 300),
      reverseDuration: const Duration(milliseconds: 300),
      firstCurve: Curves.fastOutSlowIn,
      secondCurve: Curves.fastOutSlowIn,
    );
  }
}
