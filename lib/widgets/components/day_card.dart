import 'package:flutter/material.dart';
import 'package:hackathon_lviv/domain/models/week.dart';
import 'package:hackathon_lviv/util/formatters.dart';

class DayCard extends StatelessWidget {
  const DayCard({Key? key, required this.day}) : super(key: key);

  final Day day;

  @override
  Widget build(BuildContext context) {
    const iconSize = 16.0;
    return Card(
      margin: const EdgeInsets.all(2),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(day.date.formatDateOnly()),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (day.hasNegativeHabit)
                    const Icon(
                      Icons.cancel,
                      size: iconSize,
                    )
                  else
                    const SizedBox(width: iconSize, height: iconSize),
                  if (day.hasPositiveHabit)
                    const Icon(
                      Icons.done,
                      size: iconSize,
                    )
                  else
                    const SizedBox(width: iconSize, height: iconSize),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
