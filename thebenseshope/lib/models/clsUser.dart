import 'package:json_annotation/json_annotation.dart';
import 'package:thebenseshope/models/clsCustomer.dart';
part 'clsUser.g.dart';

@JsonSerializable()
class ClsUser {
  int userId;
  String phone;
  String userPassword;
  String userModidifyPassword;
  String userName;
  String emailAddress;
  String dateOfBirth;
  String registerDate;
  bool isActivated;
  ClsUser(
      {this.userId,
      this.userName,
      this.userPassword,
      this.userModidifyPassword,
      this.emailAddress,
      this.dateOfBirth,
      this.registerDate,
      this.phone,
      this.isActivated});

  factory ClsUser.fromJson(Map<String, dynamic> json) =>
      _$ClsUserFromJson(json);
  Map<String, dynamic> toJson() => _$ClsUserToJson(this);
}
