import 'package:meta/meta.dart';

@immutable
abstract class RemoteError {}

class ServerResponseError implements RemoteError {
  final String message;
  final int statusCode;

  const ServerResponseError(this.message, this.statusCode);

  @override
  String toString() =>
      'ServerResponseError{message: $message, statusCode: $statusCode}';
}

class UnexpectedError implements RemoteError {
  final String message;
  final error;

  const UnexpectedError(this.message, this.error);

  @override
  String toString() => 'UnexpectedError{message: $message, error: $error}';
}
