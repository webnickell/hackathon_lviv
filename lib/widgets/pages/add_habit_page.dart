import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/add_habit_bloc.dart';
import 'package:hackathon_lviv/domain/models/habit.dart';
import 'package:hackathon_lviv/widgets/pages/habit_card_page' '.dart';

class AddHabitPage extends StatefulWidget {
  const AddHabitPage({Key? key}) : super(key: key);

  static const routeName = '/add_habit';

  @override
  State<AddHabitPage> createState() => _AddHabitPageState();
}

class _AddHabitPageState extends State<AddHabitPage> {
  final _habitType = BehaviorSubject<HabitType>.seeded(HabitType.useful);
  final _designType = BehaviorSubject<DesignType>.seeded(DesignType.second);
  final _nameController = TextEditingController(text: '');
  final _descriptionController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.ac_unit),
          onPressed: () =>
              Navigator.of(context).pushNamed(HabitCardPage.routeName),
        ),
        title: const Text('Add habit'),
        centerTitle: true,
      ),
      floatingActionButton: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 244.0,
          minHeight: 44.0,
        ),
        child: ElevatedButton(
          onPressed: () {
            context.read<AddHabitBloc>().add(
                  AddHabitEvent.submit(
                    habit: Habit(
                      id: '3',
                      name: _nameController.text,
                      description: _descriptionController.text,
                      designType: _designType.value,
                      type: _habitType.value,
                    ),
                  ),
                );
          },
          child: const Text('Submit'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(height: 20.0),
            const Text('Create habit'),
            const SizedBox(height: 20.0),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Habit name'),
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Description'),
            ),
            const SizedBox(height: 20.0),
            const Text('Please, select habit type'),
            const SizedBox(height: 8.0),
            CupertinoSlidingSegmentedControl<HabitType>(
              groupValue: HabitType.useful,
              children: const <HabitType, Widget>{
                HabitType.useful: Text('Useful'),
                HabitType.useless: Text('Useless')
              },
              onValueChanged: (value) {
                _habitType.add(value!);
              },
            ),
            const SizedBox(height: 20.0),
            const Text('Please, select habit view type'),
            const SizedBox(height: 8.0),
            CupertinoSlidingSegmentedControl<DesignType>(
              groupValue: DesignType.second,
              children: const <DesignType, Widget>{
                DesignType.first: Text('Checks'),
                DesignType.second: Text('Forest'),
                DesignType.third: Text('Bitcoin'),
              },
              onValueChanged: (value) {
                _designType.add(value!);
              },
            ),
            const SizedBox(height: 72.0),
          ],
        ),
      ),
    );
  }
}
