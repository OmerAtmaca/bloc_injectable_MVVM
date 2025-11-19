// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  String get pageError => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  StateType get stateType => throw _privateConstructorUsedError;
  QuerySnapshot<UsersModel?>? get dataUser =>
      throw _privateConstructorUsedError;
  int get counted => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  bool get isDragging => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {String pageError,
      String error,
      StateType stateType,
      QuerySnapshot<UsersModel?>? dataUser,
      int counted,
      String userId,
      bool isDragging});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageError = null,
    Object? error = null,
    Object? stateType = null,
    Object? dataUser = freezed,
    Object? counted = null,
    Object? userId = null,
    Object? isDragging = null,
  }) {
    return _then(_value.copyWith(
      pageError: null == pageError
          ? _value.pageError
          : pageError // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      stateType: null == stateType
          ? _value.stateType
          : stateType // ignore: cast_nullable_to_non_nullable
              as StateType,
      dataUser: freezed == dataUser
          ? _value.dataUser
          : dataUser // ignore: cast_nullable_to_non_nullable
              as QuerySnapshot<UsersModel?>?,
      counted: null == counted
          ? _value.counted
          : counted // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      isDragging: null == isDragging
          ? _value.isDragging
          : isDragging // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String pageError,
      String error,
      StateType stateType,
      QuerySnapshot<UsersModel?>? dataUser,
      int counted,
      String userId,
      bool isDragging});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageError = null,
    Object? error = null,
    Object? stateType = null,
    Object? dataUser = freezed,
    Object? counted = null,
    Object? userId = null,
    Object? isDragging = null,
  }) {
    return _then(_$HomeStateImpl(
      pageError: null == pageError
          ? _value.pageError
          : pageError // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      stateType: null == stateType
          ? _value.stateType
          : stateType // ignore: cast_nullable_to_non_nullable
              as StateType,
      dataUser: freezed == dataUser
          ? _value.dataUser
          : dataUser // ignore: cast_nullable_to_non_nullable
              as QuerySnapshot<UsersModel?>?,
      counted: null == counted
          ? _value.counted
          : counted // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      isDragging: null == isDragging
          ? _value.isDragging
          : isDragging // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.pageError = "",
      this.error = "",
      this.stateType = StateType.initial,
      this.dataUser = null,
      this.counted = 0,
      this.userId = "",
      this.isDragging = false});

  @override
  @JsonKey()
  final String pageError;
  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final StateType stateType;
  @override
  @JsonKey()
  final QuerySnapshot<UsersModel?>? dataUser;
  @override
  @JsonKey()
  final int counted;
  @override
  @JsonKey()
  final String userId;
  @override
  @JsonKey()
  final bool isDragging;

  @override
  String toString() {
    return 'HomeState(pageError: $pageError, error: $error, stateType: $stateType, dataUser: $dataUser, counted: $counted, userId: $userId, isDragging: $isDragging)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.pageError, pageError) ||
                other.pageError == pageError) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.stateType, stateType) ||
                other.stateType == stateType) &&
            (identical(other.dataUser, dataUser) ||
                other.dataUser == dataUser) &&
            (identical(other.counted, counted) || other.counted == counted) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isDragging, isDragging) ||
                other.isDragging == isDragging));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageError, error, stateType,
      dataUser, counted, userId, isDragging);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final String pageError,
      final String error,
      final StateType stateType,
      final QuerySnapshot<UsersModel?>? dataUser,
      final int counted,
      final String userId,
      final bool isDragging}) = _$HomeStateImpl;

  @override
  String get pageError;
  @override
  String get error;
  @override
  StateType get stateType;
  @override
  QuerySnapshot<UsersModel?>? get dataUser;
  @override
  int get counted;
  @override
  String get userId;
  @override
  bool get isDragging;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
