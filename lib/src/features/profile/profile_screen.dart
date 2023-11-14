import 'package:flutter/material.dart';
import 'package:greengrocer/src/features/auth/sign_in_screen.dart';
import 'package:greengrocer/src/features/profile/components/profile_forms.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil do usuário"),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (ctx) {
                  return const SignInScreen();
                })
              );
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 12),
              child: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ProfileForms(),
            _UpdateProfileButton(),
          ],
        ),
      ),
    );
  }
}

class _UpdateProfileButton extends StatelessWidget {
  const _UpdateProfileButton();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18)),
          side: BorderSide(color: Colors.green.withAlpha(90)),
        ),
        onPressed: () {},
        child: const Text(
          "Atualizar perfil",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
