import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/map/map_bloc.dart';
import 'package:hackathon_lviv/widgets/components/event_card.dart';
import 'package:hackathon_lviv/widgets/components/pagination_scroll_mixin.dart';
import 'package:hackathon_lviv/widgets/navigation_bundles/event_navigation_bundle.dart';
import 'package:hackathon_lviv/widgets/pages/event_page.dart';

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
    final theme = Theme.of(context);
    final headerStyle = theme.textTheme.headline5;
    return Container(
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
          child: BlocBuilder<MapBloc, MapState>(
            builder: (context, state) => state.maybeMap(
              orElse: () => const Center(child: CircularProgressIndicator()),
              data: (data) => DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white10,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      children: [
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(12),
                            child: Text(
                              'Events',
                              style: headerStyle,
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.all(12),
                              child: TextButton(
                                child: Text('Refresh'),
                                onPressed: () {
                                  context.read<MapBloc>().add(
                                      MapEvent.loadByCoords(
                                          coords: data.centerLocation));
                                  scrollController.jumpTo(0);
                                },
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 250,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        controller: scrollController,
                        itemCount: data.events.length,
                        itemBuilder: (ctx, i) => EventCard(
                          event: data.events[i],
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              EventPage.routeName,
                              arguments:
                                  EventNavigationBundle(data.events[i].id),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
