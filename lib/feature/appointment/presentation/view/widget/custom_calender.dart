import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomCalender extends StatefulWidget {
  const CustomCalender({super.key});

  @override
  State<CustomCalender> createState() => _CustomCalenderState();
}

class _CustomCalenderState extends State<CustomCalender> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                border: Border(
                  bottom: BorderSide(color: AppColors.whiteColorF9, width: 3),
                ),
              ),
            ),
          ),
          TableCalendar(
            firstDay: DateTime.utc(2020),
            lastDay: DateTime.utc(2030, 12, 31),
            focusedDay: _focusedDay,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            },
            calendarStyle: const CalendarStyle(
              isTodayHighlighted: false,

              todayDecoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              selectedDecoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
            ),
            headerStyle: HeaderStyle(
              headerMargin: const EdgeInsets.only(bottom: 10),
              leftChevronVisible: false,
              headerPadding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              rightChevronIcon: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.chevron_left, color: Colors.white),
                  SizedBox(width: 8),
                  Icon(Icons.chevron_right, color: Colors.white),
                ],
              ),
              titleTextStyle: AppStyles.textMedium16(
                context,
              ).copyWith(color: AppColors.whiteColor),
              formatButtonVisible: false,

              decoration: const BoxDecoration(
                color: AppColors.greenColor0E,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
