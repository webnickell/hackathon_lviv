import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/create_event/create_event_bloc.dart';
import 'package:hackathon_lviv/widgets/components/progress_bar.dart';
import 'package:hackathon_lviv/widgets/pages/create%20event/pick_location_page.dart';

class LocationPhotoPage extends StatelessWidget {
  const LocationPhotoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              const ProgressBar(isSelected: [true, true, false]),
              const SizedBox(height: 20.0),
              const Text(
                'Add some photos',
              ),
              const SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () => context
                    .read<CreateEventBloc>()
                    .add(AddPhotosButtonPressed()),
                child: const Text('Add'),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Select Location',
              ),
              const SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PickLocationPage(),
                  ),
                ),
                child: const Text('Select'),
              ),
            ],
          ),
        ),
        Positioned(
          left: 16.0,
          right: 16.0,
          bottom: 24.0,
          child: Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () => context.read<CreateEventBloc>().add(
                        const BackButtonPressed(
                          viewSource: CreateEventViewSource.dateFaq,
                        ),
                      ),
                  child: const Text('Back'),
                ),
              ),
              const SizedBox(width: 8.0),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => context.read<CreateEventBloc>().add(
                        SubmitButtonPressed(),
                      ),
                  child: const Text(
                    'Finish',
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
