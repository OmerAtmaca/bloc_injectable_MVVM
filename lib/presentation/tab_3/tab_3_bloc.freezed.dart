// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tab_3_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TabUcState {
  String get pageError => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  StateType get stateType => throw _privateConstructorUsedError;
  UsersModel? get usersModel => throw _privateConstructorUsedError;
  int get counted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TabUcStateCopyWith<TabUcState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabUcStateCopyWith<$Res> {
  factory $TabUcStateCopyWith(
          TabUcState value, $Res Function(TabUcState) then) =
      _$TabUcStateCopyWithImpl<$Res, TabUcState>;
  @useResult
  $Res call(
      {String pageError,
      String error,
      StateType stateType,
      UsersModel? usersModel,
      int counted});
}

/// @nodoc
class _$TabUcStateCopyWithImpl<$Res, $Val extends TabUcState>
    implements $TabUcStateCopyWith<$Res> {
  _$TabUcStateCopyWithImpl(this._value, this._then);

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
    Object? usersModel = freezed,
    Object? counted = null,
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
      usersModel: freezed == usersModel
          ? _value.usersModel
          : usersModel // ignore: cast_nullable_to_non_nullable
              as UsersModel?,
      counted: null == counted
          ? _value.counted
          : counted // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TabUcStateImplCopyWith<$Res>
    implements $TabUcStateCopyWith<$Res> {
  factory _$$TabUcStateImplCopyWith(
          _$TabUcStateImpl value, $Res Function(_$TabUcStateImpl) then) =
      __$$TabUcStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String pageError,
      String error,
      StateType stateType,
      UsersModel? usersModel,
      int counted});
}

/// @nodoc
class __$$TabUcStateImplCopyWithImpl<$Res>
    extends _$TabUcStateCopyWithImpl<$Res, _$TabUcStateImpl>
    implements _$$TabUcStateImplCopyWith<$Res> {
  __$$TabUcStateImplCopyWithImpl(
      _$TabUcStateImpl _value, $Res Function(_$TabUcStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageError = null,
    Object? error = null,
    Object? stateType = null,
    Object? usersModel = freezed,
    Object? counted = null,
  }) {
    return _then(_$TabUcStateImpl(
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
      usersModel: freezed == usersModel
          ? _value.usersModel
          : usersModel // ignore: cast_nullable_to_non_nullable
              as UsersModel?,
      counted: null == counted
          ? _value.counted
          : counted // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TabUcStateImpl implements _TabUcState {
  const _$TabUcStateImpl(
      {this.pageError = "",
      this.error = "",
      this.stateType = StateType.initial,
      this.usersModel = null,
      this.counted = 0});

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
  final UsersModel? usersModel;
  @override
  @JsonKey()
  final int counted;

  @override
  String toString() {
    return 'TabUcState(pageError: $pageError, error: $error, stateType: $stateType, usersModel: $usersModel, counted: $counted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabUcStateImpl &&
            (identical(other.pageError, pageError) ||
                other.pageError == pageError) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.stateType, stateType) ||
                other.stateType == stateType) &&
            (identical(other.usersModel, usersModel) ||
                other.usersModel == usersModel) &&
            (identical(other.counted, counted) || other.counted == counted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, pageError, error, stateType, usersModel, counted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TabUcStateImplCopyWith<_$TabUcStateImpl> get copyWith =>
      __$$TabUcStateImplCopyWithImpl<_$TabUcStateImpl>(this, _$identity);
}

abstract class _TabUcState implements TabUcState {
  const factory _TabUcState(
      {final String pageError,
      final String error,
      final StateType stateType,
      final UsersModel? usersModel,
      final int counted}) = _$TabUcStateImpl;

  @override
  String get pageError;
  @override
  String get error;
  @override
  StateType get stateType;
  @override
  UsersModel? get usersModel;
  @override
  int get counted;
  @override
  @JsonKey(ignore: true)
  _$$TabUcStateImplCopyWith<_$TabUcStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
