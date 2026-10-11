import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_model.dart';

part 'student_model.freezed.dart';
part 'student_model.g.dart';

@freezed
abstract class StudentModel with _$StudentModel {
  const factory StudentModel({
    required int id,
    required int userId,
    required int age,
    required int level,
    required UserModel user,
  }) = _StudentModel;

  factory StudentModel.fromJson(Map<String, dynamic> json) =>
      _$StudentModelFromJson(json);
}
