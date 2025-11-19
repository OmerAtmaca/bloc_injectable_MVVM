import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tofas_spor_okullari/state/base_cubit.dart';

import '../../data/models/services/user_model_local_storage_service.dart';
import '../../data/models/users_model.dart';
import '../../data/repositories/auth_repository.dart';
import '../../data/repositories/firebase_repository.dart';
import '../utils/bloc_common.dart';

part 'main_tab_bloc.freezed.dart';

@freezed
class MainTabState with _$MainTabState {
  const factory MainTabState({
    required int currentTabPosition,
    @Default(false) bool isLoggedOut,
    @Default(false) bool isUpdateSide,
    @Default("") String userId,
    @Default("") String dpName,
    @Default(StateType.initial) StateType stateType,
  }) = _MainTabState;
}

class MainTabBloc extends BaseCubit<MainTabState> {
  MainTabBloc(
      this._firebaseRepository, this._authRepository, this._localStorageService)
      : super(const MainTabState(currentTabPosition: 0));
  final FirebaseRepository _firebaseRepository;
  final AuthRepository _authRepository;
  final UserModelLocalStorageService _localStorageService;

  void updateTabPosition(int pos) =>
      emit(state.copyWith(currentTabPosition: pos));

  void getDPName() =>
      emit(state.copyWith(dpName: _localStorageService.getDPName()));

  void updateSide(bool data) => emit(state.copyWith(isUpdateSide: data));

  void addData({required UsersModel model}) {
    emit(state.copyWith(stateType: StateType.loading));
    _firebaseRepository.setUsers(
        "users", "user", _localStorageService.getId(), model.id ?? "", model);
    emit(state.copyWith(stateType: StateType.success));
  }

  Future<void> logout() async {
    try {
      _authRepository.logOut();

      emit(state.copyWith(currentTabPosition: 0, isLoggedOut: true));
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
  }
}
