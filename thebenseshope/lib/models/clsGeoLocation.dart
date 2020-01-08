import 'package:json_annotation/json_annotation.dart';
part 'clsGeoLocation.g.dart';

@JsonSerializable()
class ClsGeoPoint {
  const ClsGeoPoint({this.latitude, this.longitude});

  final double latitude;
  final double longitude;
  factory ClsGeoPoint.fromJson(Map<String, dynamic> json) =>
      _$ClsGeoPointFromJson(json);
  Map<String, dynamic> toJson() => _$ClsGeoPointToJson(this);
}
