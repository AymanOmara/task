class Response<T> {
  T? data;
  final List<String> message;
  final bool success;
  final int statusCode;

  Response({
    this.data,
    this.message = const [],
    this.statusCode = 400,
    this.success = false,
  });
}
