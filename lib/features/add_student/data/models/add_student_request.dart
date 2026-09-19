import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_student_request.g.dart';

@JsonSerializable()
class AddStudentRequest {
  final String name;
  final int age;

  AddStudentRequest({required this.name, required this.age});

  Map<String, dynamic> toJson() => _$AddStudentRequestToJson(this);
}
