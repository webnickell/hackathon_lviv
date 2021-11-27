import 'package:flutter/widgets.dart';

mixin PaginationScrollMixin<T extends StatefulWidget> on State<T> {
  bool _isLoading = false;
  ScrollController get scrollController;

  void onLoadNextPage();

  void onLoadFinished() {
    _isLoading = false;
  }

  void _listener() {
    if (!_isLoading &&
        (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent)) {
      _isLoading = true;
      onLoadNextPage();
    }
  }

  @override
  void initState() {
    super.initState();

    scrollController.addListener(_listener);
  }

  @override
  void dispose() {
    scrollController.removeListener(_listener);
    super.dispose();
  }
}
