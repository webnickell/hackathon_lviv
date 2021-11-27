import 'package:flutter/material.dart';
import 'package:hackathon_lviv/domain/bloc/create_event/create_event_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon_lviv/widgets/components/progress_bar.dart';

class NameDescriptionPage extends StatefulWidget {
  const NameDescriptionPage({Key? key}) : super(key: key);

  @override
  State<NameDescriptionPage> createState() => _NameDescriptionPageState();
}

class _NameDescriptionPageState extends State<NameDescriptionPage> {
  late TextEditingController _nameController;
  late TextEditingController _descriptionController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: '');
    _descriptionController = TextEditingController(text: '');
  }

  @override
  void dispose() {
    _descriptionController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              const ProgressBar(isSelected: [false, false, false]),
              const SizedBox(height: 20.0),
              const Text(
                'Create interesting name for your event',
              ),
              const SizedBox(height: 8.0),
              TextField(
                controller: _nameController,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Provide members of your event with concise description',
              ),
              const SizedBox(height: 8.0),
              TextField(
                controller: _descriptionController,
                maxLines: 8,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Description',
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 16.0,
          right: 16.0,
          bottom: 24.0,
          child: ElevatedButton(
            onPressed: () => context.read<CreateEventBloc>().add(
                  NameDescriptionSubmitted(
                    name: _nameController.text,
                    description: _descriptionController.text,
                  ),
                ),
            child: const Text(
              'Next',
            ),
          ),
        ),
      ],
    );
  }
}
