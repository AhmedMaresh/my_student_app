import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_student_request.g.dart';

@JsonSerializable()
class UpdateStudentRequest {
  final String name;
  final int age;

  UpdateStudentRequest({required this.name, required this.age});

  Map<String, dynamic> toJson() => _$UpdateStudentRequestToJson(this);
}
