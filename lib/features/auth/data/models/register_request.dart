import 'package:json_annotation/json_annotation.dart';

part 'register_request.g.dart';

@JsonSerializable()
class RegisterRequest {
  final String name;
  final String email;
  final String password;
  final int age;
  final int level;

  RegisterRequest({
    required this.name,
    required this.email,
    required this.password,
    required this.age,
    required this.level,
  });

  Map<String, dynamic> toJson() => _$RegisterRequestToJson(this);
}
