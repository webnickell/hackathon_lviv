import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/habits/habits_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/pagination/pagination_bloc.dart';
import 'package:hackathon_lviv/domain/models/habit.dart';
import 'package:hackathon_lviv/domain/repository/habit_repository.dart';
import 'package:hackathon_lviv/widgets/components/bloc_paginated_list_view.dart';
import 'package:hackathon_lviv/widgets/components/empty_placeholder.dart';
import 'package:hackathon_lviv/widgets/components/habit_cell.dart';
import 'package:hackathon_lviv/widgets/pages/add_habit_page.dart';

class HabitsPage extends StatefulWidget {
  const HabitsPage({Key? key}) : super(key: key);

  static const routeName = '/habits';

  @override
  State<HabitsPage> createState() => _HabitsPageState();
}

class _HabitsPageState extends State<HabitsPage> with TickerProviderStateMixin {
  late TabController controller = TabController(length: 2, vsync: this);

  void _onCreateHabit() {
    Navigator.of(context).pushNamed(AddHabitPage.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: controller,
          tabs: const [
            Tab(text: 'Useful'),
            Tab(text: 'Useless'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onCreateHabit,
        child: const Icon(Icons.add),
      ),
      body: TabBarView(
        controller: controller,
        children: const [
          HabitsContent(usefulHabits: true),
          HabitsContent(usefulHabits: false),
        ],
      ),
    );
  }
}

class HabitsContent extends StatelessWidget {
  const HabitsContent({Key? key, required this.usefulHabits}) : super(key: key);

  final bool usefulHabits;

  void _onHabitTap(ShortHabit habit) {}

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HabitsBloc>(
      create: (ctx) => HabitsBloc(
        repository: ctx.read<HabitRepository>(),
        usefulHabits: usefulHabits,
      )..add(const PaginationEvent.load()),
      child: BlocPaginatedListView<HabitsBloc, ShortHabit>.separated(
        itemBuilder: (ctx, item, i) => HabitCell(
          onTap: () => _onHabitTap(item),
          index: i,
          habit: item,
        ),
        separatorBuilder: (_, __) => const Divider(),
        emptyItemsBuilder: (ctx) => const EmptyPlaceholder(),
      ),
    );
  }
}
