import 'package:flutter/material.dart';
import 'package:hackathon_lviv/domain/bloc/account/account_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/sign_in/sign_in_bloc.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  static const routeName = '/sign_in';

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  void _onGoogleSignInPressed() {
    final authBloc = context.read<SignInBloc>();
    authBloc.add(const SignInEvent.googleAuth());
  }

  void _onSignInPressed() {
    // TODO: Add sign in Event
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final googleButtonTextStyle = theme.textTheme.bodyText1?.copyWith(
      color: Colors.black87,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign in Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Email'),
              keyboardType: TextInputType.emailAddress,
              autofillHints: const [
                AutofillHints.email,
              ],
            ),
            const SizedBox(height: 24),
            const TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Password'),
              keyboardType: TextInputType.emailAddress,
              autofillHints: const [
                AutofillHints.email,
              ],
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _onSignInPressed,
              child: const Text('Sign in'),
            ),
            const SizedBox(height: 24),
            const Divider(),
            ElevatedButton(
              onPressed: _onGoogleSignInPressed,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: Row(
                children: [
                  Text('Sign in with google', style: googleButtonTextStyle),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
