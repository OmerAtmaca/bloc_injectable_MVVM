// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ErrorDto _$ErrorDtoFromJson(Map<String, dynamic> json) {
  return _ErrorDto.fromJson(json);
}

/// @nodoc
mixin _$ErrorDto {
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorDtoCopyWith<ErrorDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorDtoCopyWith<$Res> {
  factory $ErrorDtoCopyWith(ErrorDto value, $Res Function(ErrorDto) then) =
      _$ErrorDtoCopyWithImpl<$Res, ErrorDto>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$ErrorDtoCopyWithImpl<$Res, $Val extends ErrorDto>
    implements $ErrorDtoCopyWith<$Res> {
  _$ErrorDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorDtoImplCopyWith<$Res>
    implements $ErrorDtoCopyWith<$Res> {
  factory _$$ErrorDtoImplCopyWith(
          _$ErrorDtoImpl value, $Res Function(_$ErrorDtoImpl) then) =
      __$$ErrorDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ErrorDtoImplCopyWithImpl<$Res>
    extends _$ErrorDtoCopyWithImpl<$Res, _$ErrorDtoImpl>
    implements _$$ErrorDtoImplCopyWith<$Res> {
  __$$ErrorDtoImplCopyWithImpl(
      _$ErrorDtoImpl _value, $Res Function(_$ErrorDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ErrorDtoImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorDtoImpl implements _ErrorDto {
  const _$ErrorDtoImpl({this.message});

  factory _$ErrorDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorDtoImplFromJson(json);

  @override
  final String? message;

  @override
  String toString() {
    return 'ErrorDto(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorDtoImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorDtoImplCopyWith<_$ErrorDtoImpl> get copyWith =>
      __$$ErrorDtoImplCopyWithImpl<_$ErrorDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorDtoImplToJson(
      this,
    );
  }
}

abstract class _ErrorDto implements ErrorDto {
  const factory _ErrorDto({final String? message}) = _$ErrorDtoImpl;

  factory _ErrorDto.fromJson(Map<String, dynamic> json) =
      _$ErrorDtoImpl.fromJson;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ErrorDtoImplCopyWith<_$ErrorDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
