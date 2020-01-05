import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:thebenseshope/models/clsGeoLocation.dart';
part 'clsCustomer.g.dart';

//flutter packages pub run build_runner build
@JsonSerializable()
class ClsCustomer {
  String customerId;
  String customerName;
  String address;
  String contact;
  String messagger;
  ClsGeoPoint geoPoint;
  String note;
  ClsCustomer(
      {this.customerId,
      this.customerName,
      this.address,
      this.contact,
      this.messagger,
      this.geoPoint,
      this.note});
  factory ClsCustomer.fromJson(Map<String, dynamic> json) =>
      _$ClsCustomerFromJson(json);
  Map<String, dynamic> toJson() => _$ClsCustomerToJson(this);
}
