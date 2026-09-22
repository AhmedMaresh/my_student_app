// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_student_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: unused_element
UpdateStudentRequest _$UpdateStudentRequestFromJson(
  Map<String, dynamic> json,
) => UpdateStudentRequest(
  name: json['name'] as String,
  age: (json['age'] as num).toInt(),
);

Map<String, dynamic> _$UpdateStudentRequestToJson(
  UpdateStudentRequest instance,
) => <String, dynamic>{'name': instance.name, 'age': instance.age};
