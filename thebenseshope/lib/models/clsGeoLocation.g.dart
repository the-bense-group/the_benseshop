// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clsGeoLocation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClsGeoPoint _$ClsGeoPointFromJson(Map<String, dynamic> json) {
  return ClsGeoPoint(
    latitude: (json['latitude'] as num)?.toDouble(),
    longitude: (json['longitude'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$ClsGeoPointToJson(ClsGeoPoint instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
