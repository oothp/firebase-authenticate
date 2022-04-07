import 'package:firebaseauth/authentication_service.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwdController,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<AuthenticationService>().signIn(
                      email: emailController.text,
                      password: passwdController.text);
                },
                child: const Text('Sign in'))
          ],
        ),
      ),
    );
  }
}
