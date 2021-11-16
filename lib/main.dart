import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon_lviv/app.dart';
import 'package:provider/provider.dart';
import 'package:hackathon_lviv/domain/bloc/account_bloc.dart';

void main() {
  runApp(MultiBlocProvider(
      providers: [BlocProvider(create: (ctx) => AuthorizationBloc())],
      child: const HackathonApp()));
}
