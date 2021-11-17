import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon_lviv/app.dart';
import 'package:hackathon_lviv/data/firestore_repository/week_firestore_repository.dart';
import 'package:hackathon_lviv/domain/repository/week_repository.dart';
import 'package:provider/provider.dart';
import 'package:hackathon_lviv/domain/bloc/account_bloc.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<IWeekRepository>(create: (ctx) => WeekFirestoreRepository()),
      ],
      child: MultiBlocProvider(
        providers: [BlocProvider(create: (ctx) => AuthorizationBloc())],
        child: const HackathonApp(),
      ),
    ),
  );
}
