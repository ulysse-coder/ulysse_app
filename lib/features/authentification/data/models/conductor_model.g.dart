// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conductor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConductorModel _$ConductorModelFromJson(Map<String, dynamic> json) =>
    ConductorModel(
      uid: json['uid'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      role: $enumDecode(_$UserRoleEnumMap, json['role']),
    );

Map<String, dynamic> _$ConductorModelToJson(ConductorModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'phone': instance.phone,
      'role': _$UserRoleEnumMap[instance.role]!,
    };

const _$UserRoleEnumMap = {
  UserRole.conducteur: 'conducteur',
  UserRole.gardien: 'gardien',
  UserRole.defaultRole: 'defaultRole',
};
