import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tofas_spor_okullari/state/base_cubit.dart';

import '../../data/models/services/user_model_local_storage_service.dart';
import '../../data/models/users_model.dart';
import '../../data/repositories/firebase_repository.dart';
import '../utils/bloc_common.dart';
import '../utils/error_handler.dart';

part 'home_bloc.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default("") String pageError,
    @Default("") String error,
    @Default(StateType.initial) StateType stateType,
    @Default(null) QuerySnapshot<UsersModel?>? dataUser,
    @Default(0) int counted,
    @Default("") String userId,
    @Default(false) bool isDragging,
  }) = _HomeState;
}

class HomeBloc extends BaseCubit<HomeState> {
  final FirebaseRepository _firebaseRepository;
  final UserModelLocalStorageService _localStorageService;
  HomeBloc(this._firebaseRepository, this._localStorageService)
      : super(const HomeState());

  // Future<void> getUsers({String? usersId}) async {
  //   emit(state.copyWith(stateType: StateType.loading));
  //   try {
  //     final response = await _usersRepository.getUsers();
  //     final items = response.items ;
  //     UsersModel? usersModel;
  //     if (usersId != null) {
  //       usersModel = items.firstWhereOrNull((element) => element.id == usersId);
  //     }
  //     if (items.length == 1) {
  //       BusHelper.eventBus.fire(UpdateHomeEvent(true));
  //     }
  //     emit(state.copyWith(stateType: StateType.success, usersList: items, usersModel: usersModel));
  //   } on Exception catch (e) {
  //     emit(state.copyWith(stateType: StateType.error, pageError: e.handleError()));
  //   }
  // }

  void stateSuccess() {
    emit(state.copyWith(stateType: StateType.success));
  }

  void stateLoading() {
    emit(state.copyWith(stateType: StateType.loading));
  }

  void getCurrentUserId() {
    emit(state.copyWith(userId: _localStorageService.getId().toString()));
  }

  void isDragging(bool data) {
    emit(state.copyWith(isDragging: data));
  }

  Future<void> getData() async {
    stateLoading();
    QuerySnapshot<UsersModel?> datas;
    try {
      emit(state.copyWith(userId: _localStorageService.getId().toString()));
      datas = await _firebaseRepository.getUsers(
          "users", "user", state.userId, UsersModel());
      emit(state.copyWith(dataUser: datas, stateType: StateType.success));
    } on Exception catch (e) {
      emit(state.copyWith(stateType: StateType.error, error: e.handleError()));
      emit(state.copyWith(error: ""));
      throw e.toString();
    }
  }

  void addData({required UsersModel model}) {
    _firebaseRepository.setUsers(
        "users", "user", state.userId, model.id ?? "", model);
  }

  void updateData(UsersModel model) {
    _firebaseRepository.setUsers(
        "users", "user", state.userId, model.id ?? "", model,
        isUpdate: true);
  }

  // Future<void> deleteData(String doc) async {
  //   stateLoading();
  //   await _firebaseRepository.removeUsers("users", doc);
  //   stateSuccess();
  // }
  Future<void> deleteData(String doc) async {
    emit(state.copyWith(stateType: StateType.loading));

    emit(state.copyWith(userId: _localStorageService.getId().toString()));
    try {
      await _firebaseRepository.removeUsers("users", "user", state.userId, doc);
    } on Exception catch (e) {
      emit(state.copyWith(stateType: StateType.error, error: e.handleError()));
    }
  }

  void counter(int value) {
    emit(state.copyWith(counted: value));
  }
}
