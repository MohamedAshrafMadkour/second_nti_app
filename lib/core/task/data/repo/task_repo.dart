import 'package:dartz/dartz.dart';
import 'package:doctor_app/core/error/failure.dart';
import 'package:doctor_app/core/task/data/model/task_model/task_model.dart';

abstract class TaskRepo {
  Future<Either<Failure, List<TaskModel>>> fetchItems();
}
