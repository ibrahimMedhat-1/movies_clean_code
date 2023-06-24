class ErrorMessageModel {
  final int statusCode;
  final String statusMessage;
  final bool success;

  const ErrorMessageModel({
    required this.statusCode,
    required this.statusMessage,
    required this.success,
  });

  List<Object> get props => [statusCode, statusMessage, success];

  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) => ErrorMessageModel(
        statusCode: json["status _code"],
        statusMessage: json["status_message"],
        success: json["success"],
      );
}
