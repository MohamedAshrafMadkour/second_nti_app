import 'package:doctor_app/feature/main/presentation/view/widget/comment_text_field.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/custom_details_live_item.dart';
import 'package:flutter/material.dart';

class CustomLiveDetailsComment extends StatelessWidget {
  const CustomLiveDetailsComment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.7,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.44, 0.01),
          end: const Alignment(0.50, 1.00),
          colors: [Colors.black.withValues(alpha: 0), Colors.black],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,

        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 0.5,
            child: ListView.separated(
              itemCount: 10,
              separatorBuilder: (context, index) => const SizedBox(height: 25),
              itemBuilder: (context, index) => const CustomDetailsLiveItem(),
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
          const CommentTextField(),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
        ],
      ),
    );
  }
}
