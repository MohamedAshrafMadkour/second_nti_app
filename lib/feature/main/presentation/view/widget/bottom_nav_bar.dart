import 'package:doctor_app/feature/main/data/bottom_navigation_bar_entity.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/active_and_un_active_bar.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({required this.onItemTapped, super.key});
  final ValueChanged<int> onItemTapped;
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.11,
      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: Color(0xFFFEFEFE),
        boxShadow: [
          BoxShadow(
            color: Color(0x0F292929),
            blurRadius: 48,
            offset: Offset(0, -6),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: bottomNavBarItems.asMap().entries.map((e) {
              final int index = e.key;
              return InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                    widget.onItemTapped(index);
                  });
                },
                child: ActiveAndUnActiveIconBar(
                  isActive: currentIndex == index,
                  bottomNavBarEntity: e.value,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
