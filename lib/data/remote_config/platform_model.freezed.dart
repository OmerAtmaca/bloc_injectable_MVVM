// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'platform_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlatformModel _$PlatformModelFromJson(Map<String, dynamic> json) {
  return _PlatformModel.fromJson(json);
}

/// @nodoc
mixin _$PlatformModel {
  String? get number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlatformModelCopyWith<PlatformModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlatformModelCopyWith<$Res> {
  factory $PlatformModelCopyWith(
          PlatformModel value, $Res Function(PlatformModel) then) =
      _$PlatformModelCopyWithImpl<$Res, PlatformModel>;
  @useResult
  $Res call({String? number});
}

/// @nodoc
class _$PlatformModelCopyWithImpl<$Res, $Val extends PlatformModel>
    implements $PlatformModelCopyWith<$Res> {
  _$PlatformModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_value.copyWith(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlatformModelImplCopyWith<$Res>
    implements $PlatformModelCopyWith<$Res> {
  factory _$$PlatformModelImplCopyWith(
          _$PlatformModelImpl value, $Res Function(_$PlatformModelImpl) then) =
      __$$PlatformModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? number});
}

/// @nodoc
class __$$PlatformModelImplCopyWithImpl<$Res>
    extends _$PlatformModelCopyWithImpl<$Res, _$PlatformModelImpl>
    implements _$$PlatformModelImplCopyWith<$Res> {
  __$$PlatformModelImplCopyWithImpl(
      _$PlatformModelImpl _value, $Res Function(_$PlatformModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_$PlatformModelImpl(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlatformModelImpl implements _PlatformModel {
  const _$PlatformModelImpl({this.number});

  factory _$PlatformModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlatformModelImplFromJson(json);

  @override
  final String? number;

  @override
  String toString() {
    return 'PlatformModel(number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlatformModelImpl &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlatformModelImplCopyWith<_$PlatformModelImpl> get copyWith =>
      __$$PlatformModelImplCopyWithImpl<_$PlatformModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlatformModelImplToJson(
      this,
    );
  }
}

abstract class _PlatformModel implements PlatformModel {
  const factory _PlatformModel({final String? number}) = _$PlatformModelImpl;

  factory _PlatformModel.fromJson(Map<String, dynamic> json) =
      _$PlatformModelImpl.fromJson;

  @override
  String? get number;
  @override
  @JsonKey(ignore: true)
  _$$PlatformModelImplCopyWith<_$PlatformModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
