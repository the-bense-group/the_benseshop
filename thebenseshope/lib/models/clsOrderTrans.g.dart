// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clsOrderTrans.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClsOrderTrans _$ClsOrderTransFromJson(Map<String, dynamic> json) {
  return ClsOrderTrans(
    brandId: json['brandId'] as String,
    orderId: json['orderId'] as String,
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
    deliverId: json['deliverId'] as String,
    attachmentId: json['attachmentId'] as String,
    geoPoString: json['geoPoString'],
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
      'geoPoString': instance.geoPoString,
      'deliverMan': instance.deliverMan,
      'note': instance.note,
    };
