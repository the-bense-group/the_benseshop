// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clsUser.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClsUser _$ClsUserFromJson(Map<String, dynamic> json) {
  return ClsUser(
    userId: json['userId'] as int,
    userName: json['userName'] as String,
    userPassword: json['userPassword'] as String,
    userModidifyPassword: json['userModidifyPassword'] as String,
    emailAddress: json['emailAddress'] as String,
    dateOfBirth: json['dateOfBirth'] as String,
    registerDate: json['registerDate'] as String,
    phone: json['phone'] as String,
    isActivated: json['isActivated'] as bool,
  );
}

Map<String, dynamic> _$ClsUserToJson(ClsUser instance) => <String, dynamic>{
      'userId': instance.userId,
      'phone': instance.phone,
      'userPassword': instance.userPassword,
      'userModidifyPassword': instance.userModidifyPassword,
      'userName': instance.userName,
      'emailAddress': instance.emailAddress,
      'dateOfBirth': instance.dateOfBirth,
      'registerDate': instance.registerDate,
      'isActivated': instance.isActivated,
    };
