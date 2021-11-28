import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/create_event/create_event_bloc.dart';
import 'package:hackathon_lviv/widgets/pages/create%20event/date_faq_page.dart';
import 'package:hackathon_lviv/widgets/pages/create%20event/location_photo_page.dart';
import 'package:hackathon_lviv/widgets/pages/create%20event/name_description_page.dart';

class CreateEventPage extends StatefulWidget {
  const CreateEventPage({Key? key}) : super(key: key);

  static const routeName = '/create_event';

  @override
  State<CreateEventPage> createState() => _CreateEventPageState();
}

class _CreateEventPageState extends State<CreateEventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create new event'),
      ),
      body: BlocConsumer<CreateEventBloc, CreateEventState>(
        listener: (context, state) {
          if (state is EventCreateSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: const Text(
                  'Event created',
                  style: const TextStyle(color: Colors.white),
                ),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                duration: const Duration(seconds: 2),
                behavior: SnackBarBehavior.floating,
                elevation: 3,
                margin: const EdgeInsets.all(12.0),
                backgroundColor: Colors.green,
              ),
            );
          } else if (state is EventCreateError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text(
                  'Error occured',
                  style: const TextStyle(color: Colors.white),
                ),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                behavior: SnackBarBehavior.floating,
                duration: const Duration(seconds: 2),
                elevation: 3,
                margin: const EdgeInsets.all(12.0),
                backgroundColor: Colors.red[400],
              ),
            );
          }
        },
        listenWhen: (prev, curr) =>
            curr is EventCreateSuccess || curr is EventCreateError,
        buildWhen: (prev, curr) => curr is CreateEventPageLoadSuccess,
        builder: (context, state) {
          switch ((state as CreateEventPageLoadSuccess).viewSource) {
            case CreateEventViewSource.nameDescription:
              return const NameDescriptionPage();
            case CreateEventViewSource.dateFaq:
              return const DateFaqPage();
            case CreateEventViewSource.locationPhoto:
              return const LocationPhotoPage();
          }
        },
      ),
    );
  }
}
