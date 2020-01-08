// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clsItemOrder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClsItemOrder _$ClsItemOrderFromJson(Map<String, dynamic> json) {
  return ClsItemOrder(
    itemId: json['itemId'] as int,
    itemDesc: json['itemDesc'] as String,
    itemExpiredDate: json['itemExpiredDate'] as String,
    itemExpired: json['itemExpired'] as bool,
    itemType: json['itemType'] as String,
    itemPrice: (json['itemPrice'] as num)?.toDouble(),
    itemDiscount: (json['itemDiscount'] as num)?.toDouble(),
    itemPromotion: (json['itemPromotion'] as num)?.toDouble(),
    itemQty: json['itemQty'] as int,
    itemStock: json['itemStock'] as int,
    itemActived: json['itemActived'] as bool,
  );
}

Map<String, dynamic> _$ClsItemOrderToJson(ClsItemOrder instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'itemDesc': instance.itemDesc,
      'itemExpiredDate': instance.itemExpiredDate,
      'itemExpired': instance.itemExpired,
      'itemType': instance.itemType,
      'itemPrice': instance.itemPrice,
      'itemDiscount': instance.itemDiscount,
      'itemPromotion': instance.itemPromotion,
      'itemQty': instance.itemQty,
      'itemStock': instance.itemStock,
      'itemActived': instance.itemActived,
    };
