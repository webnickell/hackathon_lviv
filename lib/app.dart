import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon_lviv/data/firestore_repository/account_firestore_repository.dart';
import 'package:hackathon_lviv/domain/bloc/account/account_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/sign_in/sign_in_bloc.dart';
import 'package:hackathon_lviv/widgets/pages/sign_in_page.dart';
import 'package:hackathon_lviv/widgets/pages/splash_page.dart';
import 'package:hackathon_lviv/widgets/routing/authorized_app.dart';

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
