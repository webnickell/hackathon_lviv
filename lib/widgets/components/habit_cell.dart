import 'package:flutter/material.dart';
import 'package:hackathon_lviv/domain/models/habit.dart';

class HabitCell extends StatelessWidget {
  const HabitCell({
    Key? key,
    required this.onTap,
    required this.index,
    required this.habit,
  }) : super(key: key);

  final VoidCallback onTap;
  final int index;
  final ShortHabit habit;

  @override
  Widget build(BuildContext context) {
    const iconSize = 16.0;
    const gap4 = SizedBox(width: 4, height: 4);
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 24,
        ),
        child: Row(
          children: [
            Text('$index.'),
            gap4,
            Text('${habit.name}'),
            const Spacer(),
            Text('${habit.progress}/21'),
            gap4,
            if (habit.progress == 21)
              const Icon(Icons.done, size: iconSize)
            else
              const SizedBox(width: iconSize, height: iconSize),
          ],
        ),
      ),
    );
  }
}
