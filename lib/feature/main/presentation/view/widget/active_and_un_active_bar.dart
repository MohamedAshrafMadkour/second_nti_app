import 'package:doctor_app/feature/main/data/bottom_navigation_bar_entity.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/active_icon_bar.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/un_active_icon_bar.dart';
import 'package:flutter/material.dart';

class ActiveAndUnActiveIconBar extends StatelessWidget {
  const ActiveAndUnActiveIconBar({
    required this.isActive,
    required this.bottomNavBarEntity,
    super.key,
  });
  final bool isActive;
  final BottomNavBarEntity bottomNavBarEntity;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveIconBar(activeIcon: bottomNavBarEntity.activeImage)
        : UnActiveIconBar(unActiveIcon: bottomNavBarEntity.inactiveImage);
  }
}
