part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.Loading() = LoadingState;
  const factory AuthState.Success({required String userRole}) = SuccessState;
  const factory AuthState.Failur({required String errMessage}) = FailurState;
}
