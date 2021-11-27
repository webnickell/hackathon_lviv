import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hackathon_lviv/domain/bloc/event/event_bloc.dart';
import 'package:hackathon_lviv/domain/models/account.dart';
import 'package:hackathon_lviv/domain/models/event.dart';
import 'package:hackathon_lviv/widgets/components/members_component.dart';
import 'package:hackathon_lviv/widgets/components/page_control.dart';
import 'package:hackathon_lviv/widgets/navigation_bundles/event_navigation_bundle.dart';
import 'package:hackathon_lviv/widgets/pages/not_found_page.dart';
import 'package:hackathon_lviv/util/date_time_helpers.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  static const String routeName = '/event';

  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final args = ModalRoute.of(context)?.settings.arguments;
    if (args == null) return;
    final a = args as EventNavigationBundle;
    context.read<EventBloc>().add(EventEvent.load(a.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<EventBloc, EventState>(builder: (context, state) {
          final name = state.maybeMap(
            orElse: () => 'Loading...',
            data: (data) => data.event.name,
          );
          return Text(name);
        }),
      ),
      body: BlocBuilder<EventBloc, EventState>(
        builder: (ctx, state) => state.maybeMap(
          orElse: () => const Center(
            child: CircularProgressIndicator(),
          ),
          notFound: (_) => const NotFoundPage(),
          data: (data) => _ContentEventPage(
            event: data.event,
            members: data.members,
          ),
        ),
      ),
    );
  }
}

class _ContentEventPage extends StatefulWidget {
  const _ContentEventPage({
    Key? key,
    required this.event,
    required this.members,
  }) : super(key: key);

  final Event event;
  final List<Account> members;

  @override
  State<_ContentEventPage> createState() => _ContentEventPageState();
}

class _ContentEventPageState extends State<_ContentEventPage> {
  final PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.read<EventBloc>().add(const EventEvent.toggleParticipate());
        },
        label: BlocBuilder<EventBloc, EventState>(builder: (context, state) {
          final participate = state.maybeMap(
            orElse: () => false,
            data: (data) => data.participate,
          );
          return Text(participate ? 'Cancel' : 'Join');
        }),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: mediaQuery.size.width,
              height: mediaQuery.size.width,
              child: Stack(
                children: [
                  PageView.builder(
                    controller: pageController,
                    itemCount: widget.event.images.length,
                    itemBuilder: (ctx, i) => Image.network(
                      widget.event.images[i],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: AnimatedBuilder(
                      animation: pageController,
                      builder: (context, _) {
                        return PageControl(
                          pagesCount: widget.event.images.length,
                          currentPage: pageController.page?.round() ?? 0,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Start at ${widget.event.begin.formatHumanFriendly}'),
                  const SizedBox(height: 24),
                  Text(widget.event.description),
                  const SizedBox(height: 24),
                  MembersComponent(members: widget.members),
                  const SizedBox(height: 24),
                  SizedBox(
                    height: 300,
                    child: GoogleMap(
                      initialCameraPosition: CameraPosition(
                        zoom: 13,
                        target: LatLng(
                            widget.event.coords.lat, widget.event.coords.lng),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
