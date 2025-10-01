import 'package:doctor_app/feature/select_time/presentation/views/widget/un_active_and_active_available_item.dart';
import 'package:flutter/material.dart';

class CustomSlotsList extends StatefulWidget {
  const CustomSlotsList({super.key});

  @override
  State<CustomSlotsList> createState() => _CustomSlotsListState();
}

class _CustomSlotsListState extends State<CustomSlotsList> {
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.1,
      child: GridView.builder(
        padding: const EdgeInsets.all(0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 2.5,
        ),

        itemCount: 7,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              currentIndex = index;
            });
          },
          child: ActiveAndUnActiveAvailableSlotsItem(
            isActive: currentIndex == index,
            hour: index + 1,
          ),
        ),
      ),
    );
  }
}
