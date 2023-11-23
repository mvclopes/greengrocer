import 'package:flutter/material.dart';
import 'package:greengrocer/src/data/stubs/user_stubs.dart';
import 'package:greengrocer/src/features/auth/sign_in_screen.dart';
import 'package:greengrocer/src/features/profile/components/profile_forms.dart';
import 'package:greengrocer/src/features/profile/components/update_password_dialog.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil do usuário"),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (ctx) {
                return const SignInScreen();
              }));
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 12),
              child: Icon(
                Icons.logout,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ProfileForms(user: userStub),
            _UpdateProfileButton(
              onUpdatePassword: () async {
                await updatePasswordDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _UpdateProfileButton extends StatelessWidget {
  final Function() onUpdatePassword;

  const _UpdateProfileButton({required this.onUpdatePassword});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          side: BorderSide(color: Colors.green.withAlpha(90)),
        ),
        onPressed: () => onUpdatePassword(),
        child: const Text(
          "Atualizar senha",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
