import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/create_event/create_event_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PickLocationPage extends StatefulWidget {
  const PickLocationPage({Key? key}) : super(key: key);

  @override
  State<PickLocationPage> createState() => _PickLocationPageState();
}

class _PickLocationPageState extends State<PickLocationPage> {
  final CameraPosition _kLviv = const CameraPosition(
    target: LatLng(49.842957, 24.031111),
    zoom: 10.0,
  );
  final BehaviorSubject<LatLng> _eventLocation =
      BehaviorSubject.seeded(const LatLng(49.842957, 24.031111));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            context
                .read<CreateEventBloc>()
                .add(LocationSubmitted(location: _eventLocation.value));
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text('Choose event location'),
      ),
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kLviv,
        onTap: (latLng) => _eventLocation.add(latLng),
      ),
    );
  }
}
