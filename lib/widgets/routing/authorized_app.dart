import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon_lviv/data/firestore_repository/checked_days_firestore_repository.dart';
import 'package:hackathon_lviv/data/firestore_repository/event_firestore_repository.dart';
import 'package:hackathon_lviv/data/firestore_repository/habit_firestore_repository.dart';
import 'package:hackathon_lviv/data/firestore_repository/members_firestore_repository.dart';
import 'package:hackathon_lviv/domain/bloc/account/account_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/add_habit/add_habit_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/create_event/create_event_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/event/event_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/habit_card/habit_card_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/map/map_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/progress/progress_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/social_share/social_share_bloc.dart';
import 'package:hackathon_lviv/domain/repository/account_repository.dart';
import 'package:hackathon_lviv/domain/repository/checked_days_repository.dart';
import 'package:hackathon_lviv/domain/repository/event_repository.dart';
import 'package:hackathon_lviv/domain/repository/habit_repository.dart';
import 'package:hackathon_lviv/domain/repository/members_repository.dart';
import 'package:hackathon_lviv/domain/repository/week_repository.dart';
import 'package:hackathon_lviv/widgets/pages/add_habit_page.dart';
import 'package:hackathon_lviv/widgets/pages/create%20event/create_event_page.dart';
import 'package:hackathon_lviv/widgets/pages/event_page.dart';
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
              firestore: FirebaseFirestore.instance,
            );
          },
        ),
        Provider<MembersRepository>(
          create: (ctx) {
            return MembersFirestoreRepository(
              firestore: FirebaseFirestore.instance,
            );
          },
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RootPage.routeName,
        theme: ThemeData(
          primarySwatch: const MaterialColor(
            0xFF5865F2,
            <int, Color>{
              50: Color(0xFF5865F2),
              100: Color(0xFF5865F2),
              200: Color(0xFF5865F2),
              300: Color(0xFF5865F2),
              400: Color(0xFF5865F2),
              500: Color(0xFF5865F2),
              600: Color(0xFF5865F2),
              700: Color(0xFF5865F2),
              800: Color(0xFF5865F2),
              900: Color(0xFF5865F2),
            },
          ),
        ),
        routes: {
          RootPage.routeName: (ctx) => MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (ctx) => ProgressBloc(
                      weekRepository: ctx.read<IWeekRepository>(),
                    ),
                  ),
                  BlocProvider(
                    create: (ctx) => MapBloc(
                      eventRepository: ctx.read<EventRepository>(),
                    ),
                  )
                ],
                child: RootPage(
                  userId: state.account.uid,
                ),
              ),
          EventPage.routeName: (ctx) => MultiBlocProvider(
                providers: [
                  BlocProvider<EventBloc>(
                    create: (ctx) => EventBloc(
                      accountRepository: ctx.read<AccountRepository>(),
                      eventRepository: ctx.read<EventRepository>(),
                      membersRepository: ctx.read<MembersRepository>(),
                      userAccount: state.account,
                    ),
                  ),
                  BlocProvider<SocialShareBloc>(
                    create: (_) => SocialShareBloc(),
                  ),
                ],
                child: const EventPage(),
              ),
        },
      ),
    );
  }
}
