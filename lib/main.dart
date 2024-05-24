import 'package:e_commerce_app/core/app/bloc_observer.dart';
import 'package:e_commerce_app/core/app/env.variabels.dart';
import 'package:e_commerce_app/core/di/dependency_injector.dart';
import 'package:e_commerce_app/core/services/shared_pref.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'e_commerce_app.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EnvVariable.instance.init(envType: EnvTypeEnum.dev);

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await SharedPref().instantiatePreferences();

  await setupServiceLocator();

  Bloc.observer = AppBlocObserver();

  runApp(const Ecommerce());
}
