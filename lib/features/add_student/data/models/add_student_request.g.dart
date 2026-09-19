// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_student_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: unused_element
AddStudentRequest _$AddStudentRequestFromJson(Map<String, dynamic> json) =>
    AddStudentRequest(
      name: json['name'] as String,
      age: (json['age'] as num).toInt(),
    );

Map<String, dynamic> _$AddStudentRequestToJson(AddStudentRequest instance) =>
    <String, dynamic>{'name': instance.name, 'age': instance.age};
