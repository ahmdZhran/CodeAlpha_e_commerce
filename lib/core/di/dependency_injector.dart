import 'package:e_commerce_app/core/app/app_cubit/cubit/app_cubit.dart';
import 'package:e_commerce_app/core/graphql/api_services.dart';
import 'package:e_commerce_app/core/graphql/dio_factory.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  await _inItCore();
}

Future<void> _inItCore() async {
  final dio = DioFactory.getDio();
  getIt..registerFactory(AppCubit.new);
  getIt..registerLazySingleton<ApiServices>(() => ApiServices(dio));
}
