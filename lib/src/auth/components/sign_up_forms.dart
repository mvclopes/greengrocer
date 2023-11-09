import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'custom_text_field.dart';

class SignUpForms extends StatelessWidget {
  SignUpForms({super.key});

  final cpfFormatter = MaskTextInputFormatter(
    mask: "###.###.###-##",
    filter: {
      "#" : RegExp(r'[0-9]'),
    }
  );

  final phoneFormatter = MaskTextInputFormatter(
      mask: "(##) #####-####",
      filter: {
        "#" : RegExp(r'[0-9]'),
      }
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 32),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(45))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Campo de Email
          const CustomTextField(
            icon: Icons.email,
            labelText: "Email",
          ),

          // Campo de Senha
          const CustomTextField(
            icon: Icons.lock,
            labelText: "Senha",
            isObscuredField: true,
          ),

          // Campo de Nome
          const CustomTextField(
            icon: Icons.person,
            labelText: "Nome",
          ),

          // Campo de Nome
          CustomTextField(
            icon: Icons.phone,
            labelText: "Celular",
            inputFormatters: [phoneFormatter],
          ),

          // Campo de Nome
          CustomTextField(
            icon: Icons.file_copy,
            labelText: "CPF",
            inputFormatters: [cpfFormatter],
          ),

          // Botão de entrar
          SizedBox(
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)
                  )
              ),
              onPressed: () {},
              child: const Text(
                "Cadastrar usuário",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
