import 'package:flutter/material.dart';

class PageControl extends StatelessWidget {
  const PageControl({
    Key? key,
    required this.pagesCount,
    required this.currentPage,
  }) : super(key: key);

  final int pagesCount;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints.expand(height: 20),
      child: ListView.separated(
        itemCount: pagesCount,
        separatorBuilder: (_, __) => const SizedBox(width: 4),
        itemBuilder: (ctx, i) => ColoredBox(
          color: pagesCount == i ? Colors.white : Colors.white60,
        ),
      ),
    );
  }
}
