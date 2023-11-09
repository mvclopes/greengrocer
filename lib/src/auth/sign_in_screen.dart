import 'package:flutter/material.dart';
import 'package:greengrocer/src/auth/components/custom_forms.dart';
import 'package:greengrocer/src/auth/components/custom_logo.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Expanded(
            child: CustomLogo()
          ),
          // Formulário
          CustomForms()
        ],
      ),
    );
  }
}
