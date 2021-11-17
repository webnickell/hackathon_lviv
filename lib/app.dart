import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/account_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/progress_bloc.dart';
import 'package:hackathon_lviv/domain/repository/week_repository.dart';
import 'package:hackathon_lviv/widgets/pages/add_habit_page.dart';
import 'package:hackathon_lviv/widgets/pages/detailed_habit_page.dart';
import 'package:hackathon_lviv/widgets/pages/habits_page.dart';
import 'package:hackathon_lviv/widgets/pages/progress_page.dart';
import 'package:hackathon_lviv/widgets/pages/sign_in_page.dart';
import 'package:hackathon_lviv/widgets/pages/splash_page.dart';

class HackathonApp extends StatefulWidget {
  const HackathonApp({Key? key}) : super(key: key);

  @override
  State<HackathonApp> createState() => _HackathonAppState();
}

class _HackathonAppState extends State<HackathonApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocBuilder<AuthorizationBloc, AccountState>(
        builder: (ctx, state) => state.map(
          initial: (_) => const SplashPage(),
          unauthorized: (_) => const SignInPage(),
          authorized: (_) => MaterialApp(
            initialRoute: ProgressPage.routeName,
            routes: {
              AddHabitPage.routeName: (ctx) => const AddHabitPage(),
              HabitsPage.routeName: (ctx) => const HabitsPage(),
              ProgressPage.routeName: (ctx) => BlocProvider(
                  create: (ctx) => ProgressBloc(
                        weekRepository: ctx.read<IWeekRepository>(),
                      ),
                  child: const ProgressPage()),
              DetailedHabitPage.routeName: (ctx) => const DetailedHabitPage(),
            },
          ),
        ),
      ),
    );
  }
}
