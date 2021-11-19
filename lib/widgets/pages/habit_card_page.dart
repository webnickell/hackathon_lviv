import 'package:flutter/material.dart';

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Habit 1'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20.0),
            const Text('November'),
            const SizedBox(height: 12.0),
            Wrap(
              runSpacing: 8.0,
              spacing: 12.0,
              direction: Axis.horizontal,
              children: <Widget>[
                ..._dayStatus.entries
                    .map(
                      (entry) => Container(
                        height: 36.0,
                        width: 36.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: entry.value ? Colors.green : Colors.black12,
                        ),
                        child: Center(
                          child: Text(
                            '${entry.key}',
                            style: TextStyle(
                              color:
                                  entry.value ? Colors.white : Colors.red[400],
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ],
            ),
            const SizedBox(height: 20.0),
            const Text('Please, submit current day result'),
            const SizedBox(height: 12.0),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      minHeight: 44.0,
                      minWidth: 120.0,
                    ),
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: Colors.red[400]!,
                        ),
                        primary: Colors.red[400],
                      ),
                      child: const Text(
                        'Failed',
                      ),
                    ),
                  ),
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      minHeight: 44.0,
                      minWidth: 120.0,
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      child: const Text('Success'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
