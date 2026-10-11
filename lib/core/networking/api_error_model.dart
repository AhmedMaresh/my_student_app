class ApiErrorModel {
  final int? statusCode;
  final String errMessage;

  ApiErrorModel({this.statusCode, required this.errMessage});
}
