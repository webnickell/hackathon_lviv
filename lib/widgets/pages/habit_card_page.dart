import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/habit_card/habit_card_bloc.dart';
import 'package:hackathon_lviv/widgets/components/calendar.dart';

Map<int, bool> _dayStatus = {
  for (var date = 1; date < 31; date++)
    if (date.isEven) date: true else date: false,
};

class HabitCardPage extends StatefulWidget {
  const HabitCardPage({Key? key}) : super(key: key);

  static const routeName = '/habit_card';

  @override
  State<HabitCardPage> createState() => _HabitCardPageState();
}

class _HabitCardPageState extends State<HabitCardPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args = ModalRoute.of(context)?.settings.arguments;

    context.read<HabitCardBloc>().add(HabitCardEvent.load(args as String));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<HabitCardBloc, HabitCardState>(
          builder: (context, state) => state.maybeMap(
            orElse: () => const CircularProgressIndicator(),
            data: (data) => Text(data.habit.name),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: BlocBuilder<HabitCardBloc, HabitCardState>(
                builder: (context, state) => state.maybeMap(
                  orElse: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  data: (data) => Calendar(
                    onTap: (date) {
                      context
                          .read<HabitCardBloc>()
                          .add(HabitCardEvent.selectDate(date: date));
                    },
                    selectedDates: data.selectedDates,
                    markedDates: data.markedDates,
                  ),
                ),
              ),
            ),
            CupertinoButton.filled(
              child: const Text('Submit'),
              onPressed: () {
                context
                    .read<HabitCardBloc>()
                    .add(const HabitCardEvent.submitDates());
              },
            )
          ],
        ),
      ),
    );
  }
}
