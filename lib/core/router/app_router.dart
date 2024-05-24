import 'package:e_commerce_app/core/di/dependency_injector.dart';
import 'package:e_commerce_app/core/router/base_routes.dart';
import 'package:e_commerce_app/core/router/default_router.dart';
import 'package:e_commerce_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:e_commerce_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:e_commerce_app/features/auth/presentation/views/sign_up_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static const String signInView = "Sign In view";
  static const String signUpView = "Sign Up view";

  static Route<void> onGenerateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case signInView:
        return BaseRoute(
            page: BlocProvider(
          create: (context) => getIt<AuthBloc>(),
          child: const SignInView(),
        ));
      case signUpView:
        return BaseRoute(page: SignUpView());

      default:
        return BaseRoute(page: NoRouteFinded());
    }
  }
}
