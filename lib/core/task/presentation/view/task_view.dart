import 'package:doctor_app/core/helper/get_it_method.dart';
import 'package:doctor_app/core/task/data/repo/task_repo.dart';
import 'package:doctor_app/core/task/presentation/manager/cubit/task_cubit.dart';
import 'package:doctor_app/core/task/presentation/view/widget/custom_task_item.dart';
import 'package:doctor_app/core/task/presentation/view/widget/task_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskView extends StatelessWidget {
  const TaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => TaskCubit(getIt.get<TaskRepo>())..fetchItems(),
        child: const TaskViewBody(),
      ),
    );
  }
}
