import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tofas_spor_okullari/state/base_cubit.dart';

import '../../data/models/users_model.dart';
import '../../data/repositories/firebase_repository.dart';
import '../utils/bloc_common.dart';
import '../utils/error_handler.dart';

part 'tab_3_bloc.freezed.dart';

@freezed
class TabUcState with _$TabUcState {
  const factory TabUcState({
    @Default("") String pageError,
    @Default("") String error,
    @Default(StateType.initial) StateType stateType,
    @Default(null) UsersModel? usersModel,
    @Default(0) int counted,
  }) = _TabUcState;
}

class TabUcBloc extends BaseCubit<TabUcState> {
  final FirebaseRepository _firebaseRepository;
  TabUcBloc(this._firebaseRepository) : super(const TabUcState());

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

  Future<QuerySnapshot<UsersModel?>> getData() async {
    emit(state.copyWith(stateType: StateType.loading));
    try {
      final data =
          await _firebaseRepository.getUsers("users", "user", "", UsersModel());
      emit(state.copyWith(stateType: StateType.success));
      return data;
    } on Exception catch (e) {
      emit(state.copyWith(stateType: StateType.error, error: e.handleError()));
      emit(state.copyWith(error: ""));
      throw e.toString();
    }
  }

  getDeneme<UsersModel>(String deneme) {
    deneme;
  }

  void counter(int value) {
    emit(state.copyWith(counted: value));
  }

  //TODO: Check code and fix for default style
  Future<void> getProfile({bool? showLoading}) async {
    if (showLoading ?? true) emit(state.copyWith(stateType: StateType.loading));
    UsersModel? usersModel;

    emit(
      state.copyWith(
        stateType: StateType.success,
        usersModel: usersModel,
      ),
    );
  }
}
