import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/create_event/create_event_bloc.dart';
import 'package:hackathon_lviv/widgets/components/progress_bar.dart';
import 'package:intl/intl.dart';
import 'package:rxdart/subjects.dart';

class DateFaqPage extends StatefulWidget {
  const DateFaqPage({Key? key}) : super(key: key);

  @override
  State<DateFaqPage> createState() => _DateFaqPageState();
}

class _DateFaqPageState extends State<DateFaqPage> {
  final BehaviorSubject<DateTime> _startsAt = BehaviorSubject.seeded(
    DateTime.now().add(
      const Duration(
        minutes: 30,
      ),
    ),
  );
  final BehaviorSubject<DateTime> _endsAt = BehaviorSubject.seeded(
    DateTime.now().add(
      const Duration(
        hours: 2,
        minutes: 30,
      ),
    ),
  );
  TextEditingController _faqController = TextEditingController(text: '');

  DateFormat dateFormater = DateFormat.MMMd().add_jm();

  void _showDatePicker(
    ctx,
    Function(DateTime) onChanged,
  ) {
    showCupertinoModalPopup(
      context: ctx,
      builder: (_) => Container(
        height: 500,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 400,
              child: CupertinoDatePicker(
                initialDateTime: DateTime.now(),
                onDateTimeChanged: onChanged,
              ),
            ),
            CupertinoButton(
              child: const Text('OK'),
              onPressed: () => Navigator.of(ctx).pop(),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              const ProgressBar(isSelected: [true, false, false]),
              const SizedBox(height: 20.0),
              const Text(
                'Select event dates',
              ),
              const SizedBox(height: 8.0),
              OutlinedButton(
                onPressed: () => _showDatePicker(
                  context,
                  (dateTime) => _startsAt.add(dateTime),
                ),
                child: Text(
                  dateFormater.format(_startsAt.value),
                ),
              ),
              const SizedBox(height: 8.0),
              OutlinedButton(
                onPressed: () => _showDatePicker(
                  context,
                  (dateTime) => _endsAt.add(dateTime),
                ),
                child: Text(
                  dateFormater.format(_endsAt.value),
                ),
              ),
              const SizedBox(height: 8.0),
              TextField(
                controller: _faqController,
                maxLines: 8,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Add some notes',
                ),
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
                          viewSource: CreateEventViewSource.nameDescription,
                        ),
                      ),
                  child: const Text('Back'),
                ),
              ),
              const SizedBox(width: 8.0),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => context.read<CreateEventBloc>().add(
                        DateFaqSubmitted(
                          endsAt: _endsAt.value,
                          startsAt: _startsAt.value,
                          faq: _faqController.text,
                        ),
                      ),
                  child: const Text(
                    'Next',
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
