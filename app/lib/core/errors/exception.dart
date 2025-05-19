class DioErrorException implements Exception {
  final String? message;

  DioErrorException({this.message});
}

class CacheException implements Exception {
  final String? message;

  CacheException({this.message});
}

class ConnectionException implements Exception {}
