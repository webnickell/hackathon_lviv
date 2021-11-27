import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon_lviv/data/firestore_repository/event_firestore_repository.dart';
import 'package:hackathon_lviv/domain/bloc/create_event/create_event_bloc.dart';
import 'package:hackathon_lviv/domain/repository/event_repository.dart';
import 'package:hackathon_lviv/widgets/pages/account_page.dart';
import 'package:hackathon_lviv/widgets/pages/create%20event/create_event_page.dart';
import 'package:hackathon_lviv/widgets/pages/habits_page.dart';
import 'package:hackathon_lviv/widgets/pages/map_page.dart';
import 'package:provider/provider.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key, required this.userId}) : super(key: key);

  static const routeName = '/root_page';
  final String userId;

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _section = 0;

  void _onButtonBarTap(int i) {
    setState(() {
      _section = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _section,
        onTap: _onButtonBarTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'Create',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Account',
          ),
        ],
      ),
      body: IndexedStack(
        index: _section,
        children: [
          MapPage(),
          BlocProvider<CreateEventBloc>(
            create: (_) => CreateEventBloc(
              creatorId: widget.userId,
              repository: context.read<EventRepository>(),
              storage: FirebaseStorage.instance,
            ),
            child: const CreateEventPage(),
          ),
          AccountPage(),
        ],
      ),
    );
  }
}
