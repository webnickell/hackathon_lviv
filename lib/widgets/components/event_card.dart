import 'package:flutter/material.dart';
import 'package:hackathon_lviv/domain/models/short_event.dart';
import 'package:hackathon_lviv/util/date_time_helpers.dart';

class EventCard extends StatefulWidget {
  const EventCard({
    Key? key,
    required this.event,
    required this.onTap,
  }) : super(key: key);

  final ShortEvent event;
  final VoidCallback onTap;

  @override
  _EventCardState createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  @override
  Widget build(BuildContext context) {
    widget.event;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ConstrainedBox(
        constraints: BoxConstraints.loose(Size.fromWidth(150)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: InkWell(
            onTap: widget.onTap,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey[400]!),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: widget.event.previewUrl.isNotEmpty
                        ? Image.network(
                            widget.event.previewUrl,
                            fit: BoxFit.cover,
                          )
                        : Image.asset(
                            'assets/default_trip.png',
                            fit: BoxFit.cover,
                          ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.event.name),
                        Text('${widget.event.members} members'),
                        Text(widget.event.begin.formatHumanFriendly),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
