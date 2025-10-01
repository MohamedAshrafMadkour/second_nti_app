import 'package:doctor_app/feature/appointment/presentation/view/widget/active_hour.dart';
import 'package:doctor_app/feature/appointment/presentation/view/widget/un_active_hour.dart';
import 'package:flutter/material.dart';

class ActiveAndUnActiveHour extends StatelessWidget {
  const ActiveAndUnActiveHour({
    required this.isActive,
    required this.hour,
    super.key,
  });
  final bool isActive;
  final int hour;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: UnActiveHour(hour: hour),
      secondChild: ActiveHour(hour: hour),
      crossFadeState: isActive
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 500),
    );
  }
}
