import 'package:e_commerce_app/features/auth/data/data_source/auth_data_source.dart';
import 'package:e_commerce_app/features/auth/data/repo/auth_repo.dart';
import 'package:e_commerce_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:get_it/get_it.dart';

import '../services/graphql/api_services.dart';
import '../services/graphql/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  await _inItCore();
  await _initAuth();
}

Future<void> _inItCore() async {
  final dio = DioFactory.getDio();
  getIt..registerLazySingleton<ApiServices>(() => ApiServices(dio));
}

Future<void> _initAuth() async {
  getIt..registerFactory(() => AuthBloc(getIt()));
  getIt..registerLazySingleton(() => AuthRepo(getIt()));
  getIt..registerLazySingleton(() => AuthDataSource(getIt()));
}
