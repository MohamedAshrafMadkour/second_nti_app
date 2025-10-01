import 'package:doctor_app/feature/appointment/presentation/view/widget/active_and_un_active_hour.dart';
import 'package:flutter/material.dart';

class CustomHourList extends StatefulWidget {
  const CustomHourList({super.key});

  @override
  State<CustomHourList> createState() => _CustomHourListState();
}

class _CustomHourListState extends State<CustomHourList> {
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.07,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              currentIndex = index;
            });
          },
          child: ActiveAndUnActiveHour(
            hour: index + 1,
            isActive: currentIndex == index,
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: 10,
      ),
    );
  }
}
