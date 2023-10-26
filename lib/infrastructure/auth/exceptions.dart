class ServerAuthException implements Exception {
  String cause;

  ServerAuthException(this.cause);
}
