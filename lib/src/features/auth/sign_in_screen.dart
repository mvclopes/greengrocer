import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/color_palette.dart';
import 'components/custom_logo.dart';
import 'components/sign_in_forms.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: ColorPalette.swatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: const Column(
            children: [
              Expanded(
                child: CustomLogo()
              ),
              // Formulário
              SignInForms()
            ],
          ),
        ),
      ),
    );
  }
}
