import 'package:movies_clean_code/core/network/error_message_model.dart';

class ServerErrorException implements Exception {
  final ErrorMessageModel errorMessageModel;
  const ServerErrorException({required this.errorMessageModel});
}
