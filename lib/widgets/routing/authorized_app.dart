import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon_lviv/data/firestore_repository/checked_days_firestore_repository.dart';
import 'package:hackathon_lviv/data/firestore_repository/habit_firestore_repository.dart';
import 'package:hackathon_lviv/domain/bloc/account/account_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/add_habit/add_habit_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/habit_card/habit_card_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/progress/progress_bloc.dart';
import 'package:hackathon_lviv/domain/repository/checked_days_repository.dart';
import 'package:hackathon_lviv/domain/repository/habit_repository.dart';
import 'package:hackathon_lviv/domain/repository/week_repository.dart';
import 'package:hackathon_lviv/widgets/pages/add_habit_page.dart';
import 'package:hackathon_lviv/widgets/pages/habit_card_page.dart';
import 'package:hackathon_lviv/widgets/pages/root_page.dart';
import 'package:provider/provider.dart';

class AuthorizedApp extends StatelessWidget {
  const AuthorizedApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state =
        (context.read<AuthorizationBloc>().state) as AuthorizedAccountState;
    return MultiProvider(
      providers: [
        Provider<HabitRepository>(
          create: (ctx) {
            return HabitFirestoreRepository(
              authId: state.account.uid,
              firestore: FirebaseFirestore.instance,
            );
          },
        ),
        Provider<CheckedDaysRepository>(
          create: (ctx) {
            return CheckedDaysFirestoreRepository(
              authId: state.account.uid,
              firestore: FirebaseFirestore.instance,
            );
          },
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RootPage.routeName,
        routes: {
          RootPage.routeName: (ctx) => MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (ctx) => ProgressBloc(
                      weekRepository: ctx.read<IWeekRepository>(),
                    ),
                  ),
                ],
                child: const RootPage(),
              ),
          AddHabitPage.routeName: (ctx) => BlocProvider<AddHabitBloc>(
                create: (context) => AddHabitBloc(
                  habitRepository: ctx.read<HabitRepository>(),
                ),
                child: const AddHabitPage(),
              ),
          HabitCardPage.routeName: (ctx) => BlocProvider<HabitCardBloc>(
                create: (ctx) => HabitCardBloc(
                  habitRepository: ctx.read<HabitRepository>(),
                  checkedDaysRepository: ctx.read<CheckedDaysRepository>(),
                ),
                child: const HabitCardPage(),
              ),
        },
      ),
    );
  }
}
