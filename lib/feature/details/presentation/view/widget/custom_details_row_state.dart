import 'package:doctor_app/feature/details/data/model/state_model.dart';
import 'package:doctor_app/feature/details/presentation/view/widget/custom_details_state_item.dart';
import 'package:flutter/material.dart';

class CustomDetailsRowState extends StatelessWidget {
  const CustomDetailsRowState({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.63,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        shadows: const [BoxShadow(color: Color(0x14000000), blurRadius: 20)],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 2),
        child: Row(
          children: List.generate(stateList.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: CustomDetailsStateItem(stateModel: stateList[index]),
            );
          }),
        ),
      ),
    );
  }
}
