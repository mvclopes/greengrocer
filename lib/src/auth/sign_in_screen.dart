import 'package:flutter/material.dart';
import 'package:greengrocer/src/auth/components/custom_forms.dart';
import 'package:greengrocer/src/auth/components/custom_logo.dart';
import 'package:greengrocer/src/config/color_palette.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.swatchColor,
      body: const Column(
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
