import 'package:e_commerce_app/core/app/bloc_observer.dart';
import 'package:e_commerce_app/core/app/env.variabels.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'e_commerce_app.dart';
import 'firebase_options.dart';

void main() async {
  await EnvVariable.instance.init(envType: EnvTypeEnum.dev);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = AppBlocObserver();
  runApp(const Ecommerce());
}
