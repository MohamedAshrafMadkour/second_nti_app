part of 'task_cubit.dart';

sealed class TaskState extends Equatable {
  const TaskState();

  @override
  List<Object> get props => [];
}

final class TaskInitial extends TaskState {}

final class TaskLoading extends TaskState {}

final class TaskSuccess extends TaskState {
  final List<TaskModel> tasks;
  const TaskSuccess({required this.tasks});
}

final class TaskFailure extends TaskState {
  final String errorMessage;

  const TaskFailure({required this.errorMessage});
}
