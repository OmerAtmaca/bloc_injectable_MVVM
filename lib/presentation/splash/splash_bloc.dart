import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tofas_spor_okullari/state/base_cubit.dart';
import 'package:version/version.dart';

import '../../config/di/di.dart';
import '../../data/models/utils/device_info.dart';
import '../../data/remote_config/platform_model.dart';
import '../../data/repositories/auth_repository.dart';
import '../../data/repositories/firebase_repository.dart';
// ignore: depend_on_referenced_packages

import '../utils/bloc_common.dart';

part 'splash_bloc.freezed.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    @Default(StateType.success) StateType stateType,
    @Default(false) bool navigateToOnBoarding,
    @Default(false) bool navigateToLogin,
    @Default(false) bool navigateToHome,
    @Default(false) bool isForceUpdateEnabled,
    @Default(false) bool isUnderMaintenanceEnabled,
    PlatformModel? platformResponseModel,
  }) = _SplashState;
}

class SplashBloc extends BaseCubit<SplashState> {
  final AuthRepository _authRepository;
  final FirebaseRepository _firebaseRepository;

  SplashBloc(this._authRepository, this._firebaseRepository)
      : super(const SplashState());

  Future<void> init() async {
    // _authRepository.resetOnBoarding();
    // _authRepository.logout();

    final response = await _firebaseRepository.getVersionFromDatabase();
    emit(
        state.copyWith(platformResponseModel: PlatformModel(number: response)));
    isForceUpdateEnabled();
    if (!(state.isForceUpdateEnabled)) {
      return Future.delayed(const Duration(seconds: 2))
          .then((value) => navigate());
    }
  }

  // Future<void> init() {
  //   return Future.delayed(const Duration(seconds: 2)).then((value) => navigate());
  // }

  void navigate() async {
    if (_authRepository.isLoggedIn()) {
      emit(state.copyWith(navigateToHome: true));
    } else {
      if (_authRepository.isOnBoarded()) {
        emit(state.copyWith(navigateToLogin: true));
      } else {
        emit(state.copyWith(navigateToOnBoarding: true));
      }
    }
  }

  String? getVersion() {
    if (Platform.isAndroid) {
      return state.platformResponseModel?.number;
    } else {
      return state.platformResponseModel?.number;
    }
  }

  // void isUnderMaintenanceEnabled() {
  //   if (state.remoteConfig?.android?.underMaintenance?.isEnabled == true && Platform.isAndroid) {
  //     emit(state.copyWith(isUnderMaintenanceEnabled: false, platformResponseModel: state.remoteConfig?.android));
  //   } else if (state.remoteConfig?.ios?.underMaintenance?.isEnabled == true && Platform.isIOS) {
  //     emit(state.copyWith(isUnderMaintenanceEnabled: false, platformResponseModel: state.remoteConfig?.ios));
  //   } else {
  //     emit(state.copyWith(isUnderMaintenanceEnabled: false));
  //   }
  // }

  void isForceUpdateEnabled() {
    if (state.platformResponseModel?.number != null &&
        Platform.isAndroid &&
        controlForceUpdateVersion()) {
      emit(state.copyWith(
          isForceUpdateEnabled: true,
          platformResponseModel: state.platformResponseModel));
    } else if (state.platformResponseModel?.number != null &&
        Platform.isIOS &&
        controlForceUpdateVersion()) {
      emit(state.copyWith(
          isForceUpdateEnabled: true,
          platformResponseModel: state.platformResponseModel));
    } else {
      emit(state.copyWith(isForceUpdateEnabled: false));
    }
  }

  bool controlForceUpdateVersion() {
    final deviceVersion = inject<DeviceInfo>().version;
    debugPrint(deviceVersion);
    print(deviceVersion);
    print(getVersion());
    if (Version.parse(deviceVersion) < Version.parse(getVersion() ?? "")) {
      return true;
    } else {
      return false;
    }
  }
}
