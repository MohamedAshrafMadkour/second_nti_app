import 'package:doctor_app/feature/details/presentation/view/widget/custom_service_item.dart';
import 'package:flutter/material.dart';

class CustomServiceItemList extends StatelessWidget {
  const CustomServiceItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.175,
      child: ListView.separated(
        itemBuilder: (context, index) =>
            CustomServiceItem(index: index + 1, title: serviceList[index]),
        separatorBuilder: (context, index) => const Divider(thickness: 0),
        itemCount: 3,
      ),
    );
  }
}

List<String> serviceList = [
  'Patient care should be the number one priority.',
  'If you run your practiceyou know how frustrating.',
  'That’s why some of appointment reminder system.',
];
