import 'package:bloc/bloc.dart';
import 'package:doctor_app/core/task/data/model/task_model/task_model.dart';
import 'package:doctor_app/core/task/data/repo/task_repo.dart';
import 'package:equatable/equatable.dart';

part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit(this.taskRepo) : super(TaskInitial());
  final TaskRepo taskRepo;
  fetchItems() async {
    emit(TaskLoading());
    final result = await taskRepo.fetchItems();
    result.fold(
      (failure) => emit(TaskFailure(errorMessage: failure.errorMessage)),
      (tasks) => emit(TaskSuccess(tasks: tasks)),
    );
  }
}
