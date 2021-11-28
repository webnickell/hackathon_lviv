import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/create_event/create_event_bloc.dart';
import 'package:hackathon_lviv/widgets/components/progress_bar.dart';
import 'package:hackathon_lviv/widgets/pages/create%20event/pick_location_page.dart';

enum EventType {
  private,
  public,
}

class LocationPhotoPage extends StatelessWidget {
  const LocationPhotoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const ProgressBar(isSelected: [true, true, true]),
              const SizedBox(height: 20.0),
              const Text(
                'Add some photos',
              ),
              const SizedBox(height: 8.0),
              BlocBuilder<CreateEventBloc, CreateEventState>(
                buildWhen: (prev, curr) =>
                    curr is PhotosLoadSuccess || curr is PhotosLoadInProgress,
                builder: (context, state) {
                  if (state is PhotosLoadSuccess && state.images.isNotEmpty) {
                    return Wrap(
                      spacing: 12.0,
                      runSpacing: 12.0,
                      children: [
                        ...state.images.map((image) {
                          return Container(
                            height: 100.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(image),
                              ),
                            ),
                          );
                        }).toList(),
                        GestureDetector(
                          onTap: () => context
                              .read<CreateEventBloc>()
                              .add(AddPhotosButtonPressed()),
                          child: Container(
                            height: 100.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                width: 1.0,
                              ),
                            ),
                            child: const Icon(
                              Icons.add,
                            ),
                          ),
                        ),
                      ],
                    );
                  }

                  if (state is PhotosLoadInProgress) {
                    return const SizedBox(
                      height: 100.0,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }

                  return ElevatedButton(
                    onPressed: () => context
                        .read<CreateEventBloc>()
                        .add(AddPhotosButtonPressed()),
                    child: const Text('Add'),
                  );
                },
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Select Location',
              ),
              const SizedBox(height: 8.0),
              BlocBuilder<CreateEventBloc, CreateEventState>(
                buildWhen: (prev, curr) => curr is LocationSelected,
                builder: (context, state) {
                  if (state is LocationSelected) {
                    return Text(
                      (state as LocationSelected).location.toString(),
                      textAlign: TextAlign.center,
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
              const SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () async {
                  final location = await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const PickLocationPage(),
                    ),
                  );
                  context
                      .read<CreateEventBloc>()
                      .add(LocationSubmitted(location: location));
                },
                child: const Text('Select'),
              ),
              const SizedBox(height: 20.0),
              CupertinoSlidingSegmentedControl<EventType>(
                groupValue: EventType.public,
                children: const <EventType, Widget>{
                  EventType.public: Text('Public'),
                  EventType.private: Text('Private')
                },
                onValueChanged: (value) {},
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
