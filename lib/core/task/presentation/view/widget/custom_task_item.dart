import 'package:doctor_app/core/task/data/model/task_model/task_model.dart';
import 'package:doctor_app/core/task/presentation/view/widget/custom_cached_image.dart';
import 'package:flutter/material.dart';

class CustomTaskItem extends StatelessWidget {
  const CustomTaskItem({required this.taskModel, super.key});
  final TaskModel taskModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 10,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.26,
            height: MediaQuery.sizeOf(context).height * 0.1,
            child: CustomCachedNetworkImage(image: taskModel.image ?? ''),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  taskModel.name ?? 'Unknown Product',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),

                Text(
                  taskModel.company ?? 'Unknown Brand',
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(color: Colors.grey[600]),
                ),

                const SizedBox(height: 8),

                Text(
                  taskModel.description ?? '',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(color: Colors.grey[700]),
                ),

                const SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${taskModel.price?.toStringAsFixed(2) ?? '0.00'}",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.green[700],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.sell_outlined,
                          size: 18,
                          color: Colors.orange,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${taskModel.sales ?? 0} sold',
                          style: Theme.of(context).textTheme.bodySmall
                              ?.copyWith(color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
