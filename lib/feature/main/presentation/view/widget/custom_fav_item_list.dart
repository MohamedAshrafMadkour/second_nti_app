import 'package:doctor_app/feature/main/presentation/view/widget/custom_fav_item.dart';
import 'package:flutter/material.dart';

class CustomFavItemList extends StatelessWidget {
  const CustomFavItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.43,
      child: GridView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: 4,
        itemBuilder: (context, index) => const CustomFavItem(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
      ),
    );
  }
}
