import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon_lviv/data/firestore_repository/checked_days_firestore_repository.dart';
import 'package:hackathon_lviv/data/firestore_repository/event_firestore_repository.dart';
import 'package:hackathon_lviv/data/firestore_repository/habit_firestore_repository.dart';
import 'package:hackathon_lviv/domain/bloc/account/account_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/add_habit/add_habit_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/create_event/create_event_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/habit_card/habit_card_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/progress/progress_bloc.dart';
import 'package:hackathon_lviv/domain/repository/checked_days_repository.dart';
import 'package:hackathon_lviv/domain/repository/event_repository.dart';
import 'package:hackathon_lviv/domain/repository/habit_repository.dart';
import 'package:hackathon_lviv/domain/repository/week_repository.dart';
import 'package:hackathon_lviv/widgets/pages/add_habit_page.dart';
import 'package:hackathon_lviv/widgets/pages/create%20event/create_event_page.dart';
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
        Provider<EventRepository>(
          create: (ctx) {
            return EventFirestoreRepository(
              FirebaseFirestore.instance,
              state.account.uid,
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
          CreateEventPage.routeName: (ctx) => BlocProvider<CreateEventBloc>(
                create: (context) => CreateEventBloc(
                  creatorId: state.account.uid,
                  repository: context.read<EventRepository>(),
                ),
                child: const CreateEventPage(),
              ),
        },
      ),
    );
  }
}
