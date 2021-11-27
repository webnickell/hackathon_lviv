import 'package:flutter/material.dart';
import 'package:hackathon_lviv/domain/models/account.dart';

class MembersComponent extends StatelessWidget {
  const MembersComponent({
    Key? key,
    required this.members,
  }) : super(key: key);

  final List<Account> members;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[600]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: members.isNotEmpty
              ? [
                  const Expanded(
                    child: Text('Members'),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (final m in members)
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: m.photoUrl != null
                              ? NetworkImage(m.photoUrl!)
                              : null,
                          child: m.photoUrl == null
                              ? const Icon(Icons.person)
                              : null,
                        ),
                      if (members.length > 3)
                        CircleAvatar(
                          radius: 25,
                          child: Text(
                            '+${members.length - 3}',
                            style: theme.textTheme.overline,
                          ),
                        ),
                    ],
                  ),
                ]
              : const [
                  Text('No members'),
                ],
        ),
      ),
    );
  }
}
