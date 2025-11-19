import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tofas_spor_okullari/state/base_cubit.dart';

import '../../data/models/users_model.dart';
import '../../data/repositories/auth_repository.dart';
import '../utils/bloc_common.dart';

part 'login_bloc.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    UsersModel? userModel,
    @Default("") String email,
    @Default("") String password,
    @Default("") String error,
    @Default("") String phoneNumber,
    @Default(false) bool isPhoneValid,
    @Default(false) bool isSign,
    @Default(StateType.initial) StateType stateType,
  }) = _LoginState;
}

class LoginBloc extends BaseCubit<LoginState> {
  final AuthRepository _authRepository;

  void isPhoneValid(bool value) => emit(state.copyWith(isPhoneValid: value));

  void isSignIn(bool value) => emit(state.copyWith(isSign: value));

  void updatePhoneNumber(String value) =>
      emit(state.copyWith(phoneNumber: value));
  void updateEmailNumber(String value) => emit(state.copyWith(email: value));
  void updatePasswordNumber(String value) =>
      emit(state.copyWith(password: value));

  bool isFormValid() => state.isPhoneValid;

  LoginBloc(this._authRepository) : super(const LoginState());

  Future auth() async {
    try {
      final response = await _authRepository.signIn(
          email: state.email, password: state.password);
      final idToken = await response?.getIdToken();
      _authRepository.setAccessToken(idToken ?? "");
      _authRepository.setId(response?.uid.toString() ?? "");
      if (response != null) {
        isSignIn(true);
        _authRepository.setDPname(response.email ?? "");
        emit(state.copyWith(stateType: StateType.success));
      }
    } on Exception catch (e) {
      emit(state.copyWith(stateType: StateType.error, error: e.toString()));
      emit(state.copyWith(error: ""));
    }
  }

  void resetToken() => emit(state.copyWith(userModel: null));
}
