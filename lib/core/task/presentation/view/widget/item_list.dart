import 'package:doctor_app/core/loading/task_loading.dart';
import 'package:doctor_app/core/task/presentation/manager/cubit/task_cubit.dart';
import 'package:doctor_app/core/task/presentation/view/widget/custom_task_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskCubit, TaskState>(
      builder: (context, state) {
        if (state is TaskSuccess) {
          return ListView.builder(
            itemCount: state.tasks.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: CustomTaskItem(taskModel: state.tasks[index]),
            ),
          );
        } else if (state is TaskFailure) {
          return ErrorWidget(state.errorMessage);
        } else {
          return ListView.separated(
            itemBuilder: (context, index) => const TaskItemLoading(),
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemCount: 10,
          );
        }
      },
    );
  }
}
