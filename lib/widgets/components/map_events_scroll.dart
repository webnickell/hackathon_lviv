import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/map/map_bloc.dart';
import 'package:hackathon_lviv/widgets/components/event_card.dart';
import 'package:hackathon_lviv/widgets/components/pagination_scroll_mixin.dart';

class MapEventsScroll extends StatefulWidget {
  const MapEventsScroll({Key? key}) : super(key: key);

  @override
  _MapEventsScrollState createState() => _MapEventsScrollState();
}

class _MapEventsScrollState extends State<MapEventsScroll>
    with PaginationScrollMixin {
  @override
  void onLoadNextPage() {
    context.read<MapBloc>().add(const MapEvent.loadMoreLocation());
  }

  @override
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      builder: (ctx, scrollController) => BlocBuilder<MapBloc, MapState>(
        builder: (context, state) => state.maybeMap(
          orElse: () => const Center(child: CircularProgressIndicator()),
          data: (data) => DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text('Events'),
                ),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: scrollController,
                    itemCount: data.events.length,
                    itemBuilder: (ctx, i) => EventCard(event: data.events[i]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
