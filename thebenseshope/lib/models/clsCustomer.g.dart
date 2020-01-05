// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clsCustomer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClsCustomer _$ClsCustomerFromJson(Map<String, dynamic> json) {
  return ClsCustomer(
    customerId: json['customerId'] as String,
    customerName: json['customerName'] as String,
    address: json['address'] as String,
    contact: json['contact'] as String,
    messagger: json['messagger'] as String,
    geoPoint: json['geoPoint'] == null
        ? null
        : ClsGeoPoint.fromJson(json['geoPoint'] as Map<String, dynamic>),
    note: json['note'] as String,
  );
}

Map<String, dynamic> _$ClsCustomerToJson(ClsCustomer instance) =>
    <String, dynamic>{
      'customerId': instance.customerId,
      'customerName': instance.customerName,
      'address': instance.address,
      'contact': instance.contact,
      'messagger': instance.messagger,
      'geoPoint': instance.geoPoint,
      'note': instance.note,
    };
