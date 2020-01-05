// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clsOrderTrans.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClsOrderTrans _$ClsOrderTransFromJson(Map<String, dynamic> json) {
  return ClsOrderTrans(
    brandId: json['brandId'] as int,
    orderId: json['orderId'] as int,
    customerInfo: json['customerInfo'] == null
        ? null
        : ClsCustomer.fromJson(json['customerInfo'] as Map<String, dynamic>),
    itemOrderInfo: json['itemOrderInfo'] == null
        ? null
        : ClsItemOrder.fromJson(json['itemOrderInfo'] as Map<String, dynamic>),
    orderDate: json['orderDate'] as String,
    beforeDepartureDate: json['beforeDepartureDate'] as String,
    afterDepartureDate: json['afterDepartureDate'] as String,
    orderStatus: json['orderStatus'] as int,
    deliverId: json['deliverId'] as int,
    attachmentId: json['attachmentId'] as int,
    geoPoint: json['geoPoint'],
    deliverMan: json['deliverMan'] as String,
    note: json['note'] as String,
  );
}

Map<String, dynamic> _$ClsOrderTransToJson(ClsOrderTrans instance) =>
    <String, dynamic>{
      'brandId': instance.brandId,
      'orderId': instance.orderId,
      'customerInfo': instance.customerInfo,
      'itemOrderInfo': instance.itemOrderInfo,
      'orderDate': instance.orderDate,
      'beforeDepartureDate': instance.beforeDepartureDate,
      'afterDepartureDate': instance.afterDepartureDate,
      'orderStatus': instance.orderStatus,
      'deliverId': instance.deliverId,
      'attachmentId': instance.attachmentId,
      'geoPoint': instance.geoPoint,
      'deliverMan': instance.deliverMan,
      'note': instance.note,
    };
