import 'package:json_annotation/json_annotation.dart';
import 'package:thebenseshope/models/clsCustomer.dart';
import 'package:thebenseshope/models/clsOrderTrans.dart';
part 'models.g.dart';

@JsonSerializable()
class Models {
  List<ClsCustomer> lstCustomer;
  Models({
    this.lstCustomer,
  });
  factory Models.fromJson(Map<String, dynamic> json) => _$ModelsFromJson(json);
  Map<String, dynamic> toJson() => _$ModelsToJson(this);
}
