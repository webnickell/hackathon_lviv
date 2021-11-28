import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/account/account_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/progress/progress_bloc.dart';
import 'package:hackathon_lviv/widgets/components/week_line.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  static const routeName = '/account';

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  void initState() {
    super.initState();
    final progressBloc = context.read<ProgressBloc>();
    progressBloc.add(const ProgressEvent.load());
  }

  @override
  Widget build(BuildContext context) {
    final state =
        (context.read<AuthorizationBloc>().state) as AuthorizedAccountState;

    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverPersistentHeader(
              pinned: true,
              delegate: AccountPageHeader(
                name: state.account.displayName!,
                imageUrl: state.account.photoUrl!,
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Text('Your quests'),
                  SizedBox(height: 8.0),
                  
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 400.0),
            ),
          ],
        ),
      ),
    );
  }
}

class AccountPageHeader extends SliverPersistentHeaderDelegate {
  const AccountPageHeader({required this.name, required this.imageUrl});

  final String name;
  final String imageUrl;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        const Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(12.0),
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Center(
            child: SizedBox(
              child: Flex(
                mainAxisAlignment: MainAxisAlignment.center,
                direction: flexAxis(shrinkOffset),
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.blueGrey[700],
                    foregroundImage: NetworkImage(imageUrl),
                    radius: avatarRadius(shrinkOffset),
                  ),
                  const SizedBox(
                    height: 20.0,
                    width: 20.0,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: nameFontSize(shrinkOffset),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  double avatarRadius(double shrinkOffset) {
    return 50.0 - (max(0, shrinkOffset) / maxExtent * 25.0);
  }

  double nameFontSize(double shrinkOffset) {
    return 32.0 - (max(0, shrinkOffset) / maxExtent * 10.0);
  }

  Axis flexAxis(double shrinkOffset) {
    return shrinkOffset > (maxExtent / 2.5) ? Axis.horizontal : Axis.vertical;
  }

  @override
  double get maxExtent => 320.0;

  @override
  double get minExtent => 64.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
