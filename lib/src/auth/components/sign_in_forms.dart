import 'package:flutter/material.dart';
import 'package:greengrocer/src/auth/sign_up_screen.dart';
import 'package:greengrocer/src/home/home_screen.dart';
import 'custom_text_field.dart';

class SignInForms extends StatelessWidget {
  const SignInForms({super.key});

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

          // Botão de entrar
          SizedBox(
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18))),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) {
                    return const HomeScreen();
                  })
                );
              },
              child: const Text(
                "Entrar",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),

          // Campo de esqueceu a senha
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Esqueceu a senha?",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.red,
                ),
              ),
            ),
          ),

          // Divisor
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey.withAlpha(90),
                    thickness: 2,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text("OU"),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey.withAlpha(90),
                    thickness: 2,
                  ),
                ),
              ],
            ),
          ),

          // Botão de cadastro
          SizedBox(
            height: 50,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                side: BorderSide(color: Colors.green.withAlpha(90)),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) {
                        return const SignUpScreen();
                      }
                  )
                );
              },
              child: const Text(
                "Criar Conta",
                style: TextStyle(
                    fontSize: 18
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
