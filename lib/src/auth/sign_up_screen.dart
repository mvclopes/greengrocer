import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/color_palette.dart';

import 'components/sign_up_forms.dart';
import 'components/sign_up_title.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: ColorPalette.swatchColor,
      appBar: AppBar(
        backgroundColor: ColorPalette.swatchColor,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: const Column(
            children: [
              Expanded(
                child: SignUpTitle(),
              ),

              // Formulário
              SignUpForms()
            ],
          ),
        ),
      ),
    );
  }
}
