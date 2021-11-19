import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/account/account_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/add_habit/add_habit_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/progress/progress_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/sign_in/sign_in_bloc.dart';
import 'package:hackathon_lviv/domain/repository/week_repository.dart';
import 'package:hackathon_lviv/widgets/pages/add_habit_page.dart';
import 'package:hackathon_lviv/widgets/pages/habit_card_page' '.dart';
import 'package:hackathon_lviv/widgets/pages/habits_page.dart';
import 'package:hackathon_lviv/widgets/pages/progress_page.dart';
import 'package:hackathon_lviv/widgets/pages/root_page.dart';
import 'package:hackathon_lviv/widgets/pages/sign_in_page.dart';
import 'package:hackathon_lviv/widgets/pages/splash_page.dart';
import 'package:hackathon_lviv/widgets/routing/authorized_app.dart';
import 'package:provider/provider.dart';

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
          unauthorized: (_) => BlocProvider(
            create: (ctx) => SignInBloc(),
            child: const SignInPage(),
          ),
          authorized: (_) => const AuthorizedApp(),
        ),
      ),
    );
  }
}
