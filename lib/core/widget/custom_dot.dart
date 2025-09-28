import 'package:flutter/material.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: const ShapeDecoration(
        color: Color(0xFF0EBE7F),
        shape: OvalBorder(),
      ),
    );
  }
}
