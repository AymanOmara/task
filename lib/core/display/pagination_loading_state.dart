import 'package:domain/common/exceptions/network_exception.dart';

sealed class PaginationState<T> {}

class PaginationIdle<T> extends PaginationState<T> {}

class PaginationLoading<T> extends PaginationState<T> {}

class PaginationError<T> extends PaginationState<T> {
  final NetworkException exception;

  PaginationError(this.exception);
}

class PaginationData<T> extends PaginationState<T> {
  final List<T> items;
  final bool isLoadingMore;
  final bool hasMore;

  PaginationData({
    required this.items,
    required this.isLoadingMore,
    required this.hasMore,
  });
}
