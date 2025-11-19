// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_tab_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainTabState {
  int get currentTabPosition => throw _privateConstructorUsedError;
  bool get isLoggedOut => throw _privateConstructorUsedError;
  bool get isUpdateSide => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get dpName => throw _privateConstructorUsedError;
  StateType get stateType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainTabStateCopyWith<MainTabState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainTabStateCopyWith<$Res> {
  factory $MainTabStateCopyWith(
          MainTabState value, $Res Function(MainTabState) then) =
      _$MainTabStateCopyWithImpl<$Res, MainTabState>;
  @useResult
  $Res call(
      {int currentTabPosition,
      bool isLoggedOut,
      bool isUpdateSide,
      String userId,
      String dpName,
      StateType stateType});
}

/// @nodoc
class _$MainTabStateCopyWithImpl<$Res, $Val extends MainTabState>
    implements $MainTabStateCopyWith<$Res> {
  _$MainTabStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTabPosition = null,
    Object? isLoggedOut = null,
    Object? isUpdateSide = null,
    Object? userId = null,
    Object? dpName = null,
    Object? stateType = null,
  }) {
    return _then(_value.copyWith(
      currentTabPosition: null == currentTabPosition
          ? _value.currentTabPosition
          : currentTabPosition // ignore: cast_nullable_to_non_nullable
              as int,
      isLoggedOut: null == isLoggedOut
          ? _value.isLoggedOut
          : isLoggedOut // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdateSide: null == isUpdateSide
          ? _value.isUpdateSide
          : isUpdateSide // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      dpName: null == dpName
          ? _value.dpName
          : dpName // ignore: cast_nullable_to_non_nullable
              as String,
      stateType: null == stateType
          ? _value.stateType
          : stateType // ignore: cast_nullable_to_non_nullable
              as StateType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainTabStateImplCopyWith<$Res>
    implements $MainTabStateCopyWith<$Res> {
  factory _$$MainTabStateImplCopyWith(
          _$MainTabStateImpl value, $Res Function(_$MainTabStateImpl) then) =
      __$$MainTabStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentTabPosition,
      bool isLoggedOut,
      bool isUpdateSide,
      String userId,
      String dpName,
      StateType stateType});
}

/// @nodoc
class __$$MainTabStateImplCopyWithImpl<$Res>
    extends _$MainTabStateCopyWithImpl<$Res, _$MainTabStateImpl>
    implements _$$MainTabStateImplCopyWith<$Res> {
  __$$MainTabStateImplCopyWithImpl(
      _$MainTabStateImpl _value, $Res Function(_$MainTabStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTabPosition = null,
    Object? isLoggedOut = null,
    Object? isUpdateSide = null,
    Object? userId = null,
    Object? dpName = null,
    Object? stateType = null,
  }) {
    return _then(_$MainTabStateImpl(
      currentTabPosition: null == currentTabPosition
          ? _value.currentTabPosition
          : currentTabPosition // ignore: cast_nullable_to_non_nullable
              as int,
      isLoggedOut: null == isLoggedOut
          ? _value.isLoggedOut
          : isLoggedOut // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdateSide: null == isUpdateSide
          ? _value.isUpdateSide
          : isUpdateSide // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      dpName: null == dpName
          ? _value.dpName
          : dpName // ignore: cast_nullable_to_non_nullable
              as String,
      stateType: null == stateType
          ? _value.stateType
          : stateType // ignore: cast_nullable_to_non_nullable
              as StateType,
    ));
  }
}

/// @nodoc

class _$MainTabStateImpl implements _MainTabState {
  const _$MainTabStateImpl(
      {required this.currentTabPosition,
      this.isLoggedOut = false,
      this.isUpdateSide = false,
      this.userId = "",
      this.dpName = "",
      this.stateType = StateType.initial});

  @override
  final int currentTabPosition;
  @override
  @JsonKey()
  final bool isLoggedOut;
  @override
  @JsonKey()
  final bool isUpdateSide;
  @override
  @JsonKey()
  final String userId;
  @override
  @JsonKey()
  final String dpName;
  @override
  @JsonKey()
  final StateType stateType;

  @override
  String toString() {
    return 'MainTabState(currentTabPosition: $currentTabPosition, isLoggedOut: $isLoggedOut, isUpdateSide: $isUpdateSide, userId: $userId, dpName: $dpName, stateType: $stateType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainTabStateImpl &&
            (identical(other.currentTabPosition, currentTabPosition) ||
                other.currentTabPosition == currentTabPosition) &&
            (identical(other.isLoggedOut, isLoggedOut) ||
                other.isLoggedOut == isLoggedOut) &&
            (identical(other.isUpdateSide, isUpdateSide) ||
                other.isUpdateSide == isUpdateSide) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.dpName, dpName) || other.dpName == dpName) &&
            (identical(other.stateType, stateType) ||
                other.stateType == stateType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentTabPosition, isLoggedOut,
      isUpdateSide, userId, dpName, stateType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainTabStateImplCopyWith<_$MainTabStateImpl> get copyWith =>
      __$$MainTabStateImplCopyWithImpl<_$MainTabStateImpl>(this, _$identity);
}

abstract class _MainTabState implements MainTabState {
  const factory _MainTabState(
      {required final int currentTabPosition,
      final bool isLoggedOut,
      final bool isUpdateSide,
      final String userId,
      final String dpName,
      final StateType stateType}) = _$MainTabStateImpl;

  @override
  int get currentTabPosition;
  @override
  bool get isLoggedOut;
  @override
  bool get isUpdateSide;
  @override
  String get userId;
  @override
  String get dpName;
  @override
  StateType get stateType;
  @override
  @JsonKey(ignore: true)
  _$$MainTabStateImplCopyWith<_$MainTabStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
