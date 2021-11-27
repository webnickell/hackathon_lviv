import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hackathon_lviv/domain/bloc/map/map_bloc.dart';
import 'package:hackathon_lviv/domain/models/coords.dart';
import 'package:hackathon_lviv/util/date_time_helpers.dart';
import 'package:hackathon_lviv/widgets/components/map_events_scroll.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  GoogleMapController? _controller;

  @override
  void initState() {
    super.initState();
    context.read<MapBloc>().add(MapEvent.loadByCoords(
            coords: Coords(
          lat: _kGooglePlex.target.latitude,
          lng: _kGooglePlex.target.longitude,
        )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: const MapEventsScroll(),
      body: MultiBlocListener(
        listeners: [
          BlocListener<MapBloc, MapState>(
            listenWhen: (prev, curr) => prev.location != curr.location,
            listener: (ctx, state) {
              final location = state.location;
              if (location == null) return;
              final latLng = LatLng(location.lat, location.lng);
              _controller?.moveCamera(CameraUpdate.newLatLng(latLng));
            },
          ),
        ],
        child: BlocBuilder<MapBloc, MapState>(
          builder: (context, state) {
            final Set<Marker> markers = state.maybeMap(
              orElse: () => {},
              data: (data) => data.events
                  .map((e) => Marker(
                        markerId: MarkerId(e.id),
                        position: LatLng(e.coords.lat, e.coords.lng),
                      ))
                  .toSet(),
            );
            final Set<Circle> circles = state.maybeMap(
              orElse: () => {},
              data: (data) => data.events
                  .map((e) => Circle(
                        circleId: CircleId(e.id),
                        center: LatLng(e.coords.lat, e.coords.lng),
                      ))
                  .toSet(),
            );
            return GoogleMap(
              myLocationEnabled: true,
              mapType: MapType.hybrid,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (controller) => _controller = controller,
              markers: markers,
              circles: circles,
              onTap: (coords) =>
                  context.read<MapBloc>().add(MapEvent.loadByCoords(
                          coords: Coords(
                        lat: coords.latitude,
                        lng: coords.longitude,
                      ))),
            );
          },
        ),
      ),
    );
  }
}
