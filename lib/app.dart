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
