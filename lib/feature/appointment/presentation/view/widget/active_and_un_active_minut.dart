import 'package:doctor_app/feature/appointment/presentation/view/widget/active_minut.dart';
import 'package:doctor_app/feature/appointment/presentation/view/widget/un_active_minut.dart';
import 'package:flutter/material.dart';

class ActiveAndUnActiveMinut extends StatelessWidget {
  const ActiveAndUnActiveMinut({
    required this.isActive,
    required this.minut,
    super.key,
  });
  final bool isActive;
  final int minut;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: UnActiveMinut(minut: minut),
      secondChild: ActiveMinut(minut: minut),
      crossFadeState: isActive
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 500),
    );
  }
}
