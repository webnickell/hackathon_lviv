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
      body: BlocBuilder<CreateEventBloc, CreateEventState>(
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
