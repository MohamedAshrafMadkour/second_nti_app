import 'package:doctor_app/feature/on_boarding/data/model/on_boarding_model.dart';
import 'package:doctor_app/feature/on_boarding/presentation/view/widget/page_view_item.dart';
import 'package:flutter/material.dart';

class CustomPageViewList extends StatelessWidget {
  const CustomPageViewList({required this.pageController, super.key});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: onBoardingList.length,
      itemBuilder: (context, index) {
        return PageViewItem(
          description: onBoardingList[index].description,
          image: onBoardingList[index].image,
          title: onBoardingList[index].title,
        );
      },
    );
  }
}
