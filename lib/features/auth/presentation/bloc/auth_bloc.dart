import 'dart:async';
import 'package:e_commerce_app/core/services/pref_keys.dart';
import 'package:e_commerce_app/core/services/shared_pref.dart';
import 'package:e_commerce_app/features/auth/data/models/login_request_body.dart';
import 'package:e_commerce_app/features/auth/data/repo/auth_repo.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._repo) : super(_Initial()) {
    on<LoginEvent>(_login);
  }
  final AuthRepo _repo;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FutureOr<void> _login(LoginEvent event, Emitter<AuthState> emit) async {
    emit(AuthState.Loading());

    final result = await _repo.login(LoginRequestBody(
      email: emailController.text.trim(),
      password: passwordController.text,
    ));

    await result.when(success: (loginData) async {
      final userToken = loginData.data.login.accessToken ?? "";
      // save access token in shared prefrence

      await SharedPref().setString(
        PrefKeys.accessToken,userToken
      );

      // get user token
      await _repo.userRole(userToken);
      emit(const AuthState.Success());
    }, failure: (error) {
      emit(AuthState.Failur(errMessage: error));
    });
  }
}
