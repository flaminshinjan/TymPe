import 'package:flutter/material.dart';
import 'package:tympe_app/screens/auth_pages/login.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text('Sign Up Page'),
      ),
    );
  }
}
