import 'package:e_commerce_app/core/app/app_cubit/cubit/app_cubit.dart';
import 'package:get_it/get_it.dart';

import '../services/graphql/api_services.dart';
import '../services/graphql/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  await _inItCore();
}

Future<void> _inItCore() async {
  final dio = DioFactory.getDio();
  getIt..registerFactory(AppCubit.new);
  getIt..registerLazySingleton<ApiServices>(() => ApiServices(dio));
}
