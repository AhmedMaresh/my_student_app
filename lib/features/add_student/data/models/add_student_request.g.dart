// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_student_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: unused_element
AddStudentRequest _$AddStudentRequestFromJson(Map<String, dynamic> json) =>
    AddStudentRequest(
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      age: (json['age'] as num).toInt(),
      level: (json['level'] as num).toInt(),
    );

Map<String, dynamic> _$AddStudentRequestToJson(AddStudentRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'age': instance.age,
      'level': instance.level,
    };
