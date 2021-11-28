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
    zoom: 12.0,
  );
  final BehaviorSubject<LatLng> _eventLocation =
      BehaviorSubject.seeded(const LatLng(49.842957, 24.031111));
  final BehaviorSubject<Marker> _marker = BehaviorSubject.seeded(
    const Marker(
      markerId: MarkerId(''),
      position: LatLng(49.842957, 24.031111),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          StreamBuilder<Marker>(
              stream: _marker,
              builder: (context, snapshot) {
                return GoogleMap(
                  mapType: MapType.normal,
                  markers: {snapshot.data!},
                  initialCameraPosition: _kLviv,
                  onTap: (latLng) {
                    _eventLocation.add(latLng);
                    _marker.add(
                      Marker(
                        markerId: MarkerId(
                          latLng.toString(),
                        ),
                        position: latLng,
                      ),
                    );
                  },
                );
              }),
          Positioned(
            left: 16.0,
            right: 16.0,
            bottom: 48.0,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minHeight: 48.0,
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, _eventLocation.value);
                },
                child: const Text('Select location'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
