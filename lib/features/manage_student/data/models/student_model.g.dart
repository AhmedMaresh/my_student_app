// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StudentModel _$StudentModelFromJson(Map<String, dynamic> json) =>
    _StudentModel(
      id: (json['id'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      age: (json['age'] as num).toInt(),
      level: (json['level'] as num).toInt(),
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StudentModelToJson(_StudentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'age': instance.age,
      'level': instance.level,
      'user': instance.user,
    };
