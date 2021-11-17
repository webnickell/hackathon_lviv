class PaginatedList<T> {
  const PaginatedList({
    required this.data,
    required this.cursor,
    required this.loadedAllItems,
  });

  final List<T> data;
  final Object? cursor;
  final bool loadedAllItems;
}
