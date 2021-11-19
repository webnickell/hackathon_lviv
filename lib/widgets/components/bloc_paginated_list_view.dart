import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/pagination/pagination_bloc.dart';

typedef ItemWidgetBuilder<T> = Widget Function(
    BuildContext context, T item, int index);

class BlocPaginatedListView<C extends PaginationBloc<T>, T>
    extends StatelessWidget {
  const BlocPaginatedListView.builder({
    Key? key,
    required this.itemBuilder,
    required this.emptyItemsBuilder,
  })  : separatorBuilder = null,
        super(key: key);

  const BlocPaginatedListView.separated({
    Key? key,
    required this.itemBuilder,
    required this.separatorBuilder,
    required this.emptyItemsBuilder,
  }) : super(key: key);

  final ItemWidgetBuilder<T> itemBuilder;
  final IndexedWidgetBuilder? separatorBuilder;
  final WidgetBuilder emptyItemsBuilder;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<C, PaginationState<T>>(
      builder: (context, state) => state.maybeMap(
        orElse: () => _defaulLoadingBuilder(context),
        data: (data) => data.data.isEmpty
            ? emptyItemsBuilder(context)
            : separatorBuilder == null
                ? ListView.builder(
                    itemBuilder: (ctx, i) => itemBuilder(ctx, data.data[i], i),
                    itemCount: data.data.length,
                  )
                : ListView.separated(
                    itemBuilder: (ctx, i) => itemBuilder(ctx, data.data[i], i),
                    separatorBuilder: separatorBuilder!,
                    itemCount: data.data.length,
                  ),
      ),
    );
  }

  Widget _defaulLoadingBuilder(BuildContext ctx) {
    return const Center(child: CircularProgressIndicator());
  }
}
