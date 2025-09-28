import 'package:doctor_app/feature/main/presentation/view/widget/custom_live_item.dart';
import 'package:flutter/material.dart';

class LiveItemList extends StatelessWidget {
  const LiveItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.18,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const CustomLiveItem();
        },
      ),
    );
  }
}
