import 'package:doctor_app/feature/select_time/presentation/views/widget/active_available_slots_item.dart';
import 'package:doctor_app/feature/select_time/presentation/views/widget/un_active_available_item.dart';
import 'package:flutter/material.dart';

class ActiveAndUnActiveAvailableSlotsItem extends StatelessWidget {
  const ActiveAndUnActiveAvailableSlotsItem({
    required this.isActive,
    required this.hour,
    super.key,
  });
  final bool isActive;
  final int hour;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: UnActiveAvailableSlotsItem(hour: hour),
      secondChild: ActiveAvailableSlotsItem(hour: hour),
      crossFadeState: isActive
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 500),
    );
  }
}
