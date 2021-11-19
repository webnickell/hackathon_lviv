import 'package:flutter/material.dart';
import 'package:hackathon_lviv/widgets/pages/account_page.dart';
import 'package:hackathon_lviv/widgets/pages/habits_page.dart';
import 'package:hackathon_lviv/widgets/pages/progress_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  static const routeName = '/root_page';

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _section = 0;

  void _onButtonBarTap(int i) {
    setState(() {
      _section = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _section,
        onTap: _onButtonBarTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Habits',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Account',
          ),
        ],
      ),
      body: IndexedStack(
        index: _section,
        children: const [
          HabitsPage(),
          AccountPage(),
        ],
      ),
    );
  }
}
