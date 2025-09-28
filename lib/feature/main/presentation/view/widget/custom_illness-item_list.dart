import 'package:doctor_app/feature/main/data/illness_item_model.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/illness_item.dart';
import 'package:flutter/material.dart';

class CustomIllnessItemList extends StatelessWidget {
  const CustomIllnessItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IllnessItem(illnessItemModel: illnessItemsList[index]),
        ),
        itemCount: illnessItemsList.length,
      ),
    );
  }
}
