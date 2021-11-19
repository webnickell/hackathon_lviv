import 'package:flutter/material.dart';
import 'package:hackathon_lviv/util/date_time_helpers.dart';

class Calendar extends StatefulWidget {
  const Calendar({
    Key? key,
    required this.onTap,
    this.markedDates = const {},
    this.selectedDates = const {},
  }) : super(key: key);

  final ValueChanged<DateTime> onTap;
  final Set<DateTime> markedDates;
  final Set<DateTime> selectedDates;

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  late int _rows;
  late DateTime _start;
  late DateTime _end;
  late DateTime _currentDate;

  void _computate() {
    final today = _currentDate;

    _start = today.firstDayOfMonth.firstDayOfWeek;
    _end = today.lastDayOfMonth.lastDayOfWeek;
    final days = _end.difference(_start).inDays;
    _rows = days ~/ 7;
  }

  void _onNext() {
    setState(() {
      _currentDate = DateTime(
        _currentDate.year,
        _currentDate.month + 1,
        _currentDate.day,
      );
      _computate();
    });
  }

  void _onPrev() {
    setState(() {
      _currentDate = DateTime(
        _currentDate.year,
        _currentDate.month - 1,
        _currentDate.day,
      );
      _computate();
    });
  }

  @override
  void initState() {
    super.initState();
    _currentDate = DateTime.now();
    _computate();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(onPressed: _onPrev, child: const Text('Previous')),
            Text('${_currentDate.formatTextMonthOnly}'),
            TextButton(onPressed: _onNext, child: const Text('Next')),
          ],
        ),
        const SizedBox(height: 12),
        Table(
          children: Iterable.generate(_rows)
              .map((e) => Iterable.generate(7)
                  .map((d) => _start.add(Duration(days: e * 7 + d)))
                  .map((e) => _DayWidget(
                        day: e.day,
                        isMarked: widget.markedDates.contains(e),
                        isSelected: widget.selectedDates.contains(e),
                        onTap: () => widget.onTap(e),
                      ))
                  .cast<Widget>()
                  .toList())
              .map((e) => TableRow(children: e))
              .toList(),
        ),
      ],
    );
  }
}

class _DayWidget extends StatelessWidget {
  const _DayWidget({
    Key? key,
    required this.onTap,
    required this.isMarked,
    required this.isSelected,
    required this.day,
  }) : super(key: key);

  final VoidCallback onTap;
  final bool isMarked;
  final bool isSelected;
  final int day;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ColoredBox(
        color: isMarked
            ? Colors.green
            : isSelected
                ? Colors.blue
                : Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Center(
            child: Text('$day'),
          ),
        ),
      ),
    );
  }
}
