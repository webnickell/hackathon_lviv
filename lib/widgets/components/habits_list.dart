import 'package:flutter/material.dart';
import 'package:hackathon_lviv/domain/models/habit.dart';
import 'package:hackathon_lviv/widgets/components/habit_cell.dart';

class HabitsList extends StatelessWidget {
  const HabitsList({
    Key? key,
    required this.habits,
  }) : super(key: key);

  final List<ShortHabit> habits;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx, i) => HabitCell(
        onTap: () {},
        index: i + 1,
        habit: habits[i],
      ),
      separatorBuilder: (ctx, _) => const Divider(),
      itemCount: habits.length,
    );
  }
}
