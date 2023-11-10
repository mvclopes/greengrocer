import 'package:flutter/material.dart';

class SignUpTitle extends StatelessWidget {
  const SignUpTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Cadastro",
        style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}