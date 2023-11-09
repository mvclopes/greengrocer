import 'package:flutter/material.dart';
import 'custom_text_field.dart';

class SignUpForms extends StatelessWidget {
  const SignUpForms({super.key});

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
          const CustomTextField(
            icon: Icons.phone,
            labelText: "Celular",
          ),

          // Campo de Nome
          const CustomTextField(
            icon: Icons.file_copy,
            labelText: "CPF",
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
