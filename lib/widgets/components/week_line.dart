import 'package:flutter/material.dart';
import 'package:hackathon_lviv/domain/models/week.dart';
import 'package:hackathon_lviv/widgets/components/day_card.dart';

class WeekLine extends StatelessWidget {
  const WeekLine({
    Key? key,
    required this.week,
  }) : super(key: key);

  final Week week;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: week.days.map((e) => Expanded(child: DayCard(day: e))).toList(),
    );
  }
}
