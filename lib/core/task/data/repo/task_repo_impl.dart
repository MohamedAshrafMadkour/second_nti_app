import 'package:dartz/dartz.dart';
import 'package:doctor_app/core/error/failure.dart';
import 'package:doctor_app/core/service/api_service.dart';
import 'package:doctor_app/core/task/data/model/task_model/task_model.dart';
import 'package:doctor_app/core/task/data/repo/task_repo.dart';

class TaskRepoImpl extends TaskRepo {
  final ApiService apiService;

  TaskRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<TaskModel>>> fetchItems() async {
    try {
      final response = await apiService.get();
      final List<TaskModel> tasks = [];
      for (var item in response['product']) {
        tasks.add(TaskModel.fromJson(item));
      }
      return Right(tasks);
    } catch (e) {
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
