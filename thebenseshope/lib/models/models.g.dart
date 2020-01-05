// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Models _$ModelsFromJson(Map<String, dynamic> json) {
  return Models(
    lstCustomer: (json['lstCustomer'] as List)
        ?.map((e) =>
            e == null ? null : ClsCustomer.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ModelsToJson(Models instance) => <String, dynamic>{
      'lstCustomer': instance.lstCustomer,
    };
