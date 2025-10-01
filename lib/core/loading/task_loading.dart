import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class TaskItemLoading extends StatelessWidget {
  const TaskItemLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, .08),
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 0.2,
              height: MediaQuery.sizeOf(context).height * 0.1,
              color: Colors.grey[300],
            ),
            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(height: 16, width: 120, color: Colors.grey[300]),
                  const SizedBox(height: 6),
                  Container(height: 14, width: 80, color: Colors.grey[300]),
                  const SizedBox(height: 10),
                  Container(
                    height: 14,
                    width: double.infinity,
                    color: Colors.grey[300],
                  ),
                  const SizedBox(height: 6),
                  Container(height: 14, width: 200, color: Colors.grey[300]),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(height: 16, width: 60, color: Colors.grey[300]),
                      Container(height: 16, width: 80, color: Colors.grey[300]),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
