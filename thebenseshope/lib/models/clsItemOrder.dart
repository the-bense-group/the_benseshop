import 'package:json_annotation/json_annotation.dart';
part 'clsItemOrder.g.dart';

@JsonSerializable()
class ClsItemOrder {
  int itemId;
  String itemDesc;
  String itemExpiredDate;
  bool itemExpired;
  String itemType;
  double itemPrice;
  double itemDiscount;
  double itemPromotion;
  int itemQty;
  int itemStock;
  bool itemActived;
  ClsItemOrder(
      {this.itemId,
      this.itemDesc,
      this.itemExpiredDate,
      this.itemExpired,
      this.itemType,
      this.itemPrice,
      this.itemDiscount,
      this.itemPromotion,
      this.itemQty,
      this.itemStock,
      this.itemActived});
  factory ClsItemOrder.fromJson(Map<String, dynamic> json) =>
      _$ClsItemOrderFromJson(json);
  Map<String, dynamic> toJson() => _$ClsItemOrderToJson(this);
}
