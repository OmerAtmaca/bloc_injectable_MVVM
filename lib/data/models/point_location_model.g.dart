// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PointLocationModelImpl _$$PointLocationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PointLocationModelImpl(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$$PointLocationModelImplToJson(
        _$PointLocationModelImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };
