import 'package:doctor_app/feature/select_time/presentation/views/widget/custom_un_active_data_time.dart';
import 'package:doctor_app/feature/select_time/presentation/views/widget/un_active_and_active_date_time.dart';
import 'package:flutter/material.dart';

class DateTimeList extends StatefulWidget {
  const DateTimeList({super.key});

  @override
  State<DateTimeList> createState() => _DateTimeListState();
}

class _DateTimeListState extends State<DateTimeList> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.07,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: 7,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              currentIndex = index;
            });
          },
          child: UnActiveAndActiveDateTime(isActive: currentIndex == index),
        ),
      ),
    );
  }
}
