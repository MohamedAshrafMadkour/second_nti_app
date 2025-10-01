import 'package:dio/dio.dart';
import 'package:doctor_app/core/service/api_service.dart';
import 'package:doctor_app/core/task/data/repo/task_repo.dart';
import 'package:doctor_app/core/task/data/repo/task_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void getItSetup() {
  getIt.registerSingleton<ApiService>(ApiService(dio: Dio()));
  getIt.registerSingleton<TaskRepo>(
    TaskRepoImpl(apiService: getIt<ApiService>()),
  );
}
