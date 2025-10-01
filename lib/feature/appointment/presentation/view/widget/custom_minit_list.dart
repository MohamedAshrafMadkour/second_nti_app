import 'package:doctor_app/feature/appointment/presentation/view/widget/active_and_un_active_minut.dart';
import 'package:flutter/material.dart';

class CustomMinutList extends StatefulWidget {
  const CustomMinutList({super.key});

  @override
  State<CustomMinutList> createState() => _CustomHourListState();
}

class _CustomHourListState extends State<CustomMinutList> {
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.077,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              currentIndex = index;
            });
          },
          child: ActiveAndUnActiveMinut(
            minut: index + 1,
            isActive: currentIndex == index,
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: 10,
      ),
    );
  }
}
