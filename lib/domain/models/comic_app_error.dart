import 'package:meta/meta.dart';

@immutable
abstract class ComicAppError {}

class NetworkError implements ComicAppError {
  const NetworkError();
}

class ServerResponseError implements ComicAppError {
  final String message;
  final int statusCode;

  const ServerResponseError(this.message, this.statusCode);
}

class UnexpectedError implements ComicAppError {
  final String message;
  final error;

  const UnexpectedError(this.message, this.error);
}