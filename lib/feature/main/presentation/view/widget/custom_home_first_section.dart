import 'package:doctor_app/feature/main/presentation/view/widget/custom_home_list_tile.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/search_text_field.dart';
import 'package:flutter/material.dart';

class CustomHomeFirstSection extends StatelessWidget {
  const CustomHomeFirstSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      clipBehavior: Clip.none,
      children: [
        CustomHomeListTile(),
        Positioned(
          left: 0,
          right: 0,
          bottom: -20,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SearchTextField(),
          ),
        ),
      ],
    );
  }
}
