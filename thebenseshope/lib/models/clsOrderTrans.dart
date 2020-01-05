import 'package:json_annotation/json_annotation.dart';
import 'package:thebenseshope/models/clsCustomer.dart';
import 'package:thebenseshope/models/clsItemOrder.dart';
part 'clsOrderTrans.g.dart';

@JsonSerializable()
class ClsOrderTrans {
  int brandId;
  int orderId;
  ClsCustomer customerInfo;
  ClsItemOrder itemOrderInfo;
  String orderDate;
  String beforeDepartureDate;
  String afterDepartureDate;
  int orderStatus;
  int deliverId;
  int attachmentId;
  dynamic geoPoint;
  String deliverMan;
  String note;
  ClsOrderTrans(
      {this.brandId,
      this.orderId,
      this.customerInfo,
      this.itemOrderInfo,
      this.orderDate,
      this.beforeDepartureDate,
      this.afterDepartureDate,
      this.orderStatus,
      this.deliverId,
      this.attachmentId,
      this.geoPoint,
      this.deliverMan,
      this.note});
  factory ClsOrderTrans.fromJson(Map<String, dynamic> json) =>
      _$ClsOrderTransFromJson(json);
  Map<String, dynamic> toJson() => _$ClsOrderTransToJson(this);
}
