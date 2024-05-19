import 'package:e_commerce_app/core/app/app_cubit/cubit/app_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
 await _inItCore();
}
 
Future <void> _inItCore()async {
   getIt..registerFactory(AppCubit.new);
}
