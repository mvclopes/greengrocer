import 'package:flutter/material.dart';
import 'package:greengrocer/src/auth/components/custom_forms.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.transparent,
            ),
          ),

          // Formulário
          const CustomForms()
        ],
      ),
    );
  }
}
