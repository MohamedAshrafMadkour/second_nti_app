import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActiveIconBar extends StatelessWidget {
  const ActiveIconBar({required this.activeIcon, super.key});
  final String activeIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: const ShapeDecoration(
        color: Color(0xFF0EBE7E),
        shape: OvalBorder(),
      ),
      child: Center(child: SvgPicture.asset(activeIcon, color: Colors.white)),
    );
  }
}
