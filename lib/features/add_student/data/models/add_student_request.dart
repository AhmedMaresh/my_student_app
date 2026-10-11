import 'package:json_annotation/json_annotation.dart';

part 'add_student_request.g.dart';

@JsonSerializable()
class AddStudentRequest {
  final String name;
  final String email;
  final String password;
  final int age;
  final int level;

  AddStudentRequest({
    required this.name,
    required this.email,
    required this.password,
    required this.age,
    required this.level,
  });

  Map<String, dynamic> toJson() => _$AddStudentRequestToJson(this);
}
