import 'package:flutter/material.dart';
import 'package:greengrocer/src/features/common_widgets/custom_text_field.dart';

Future<bool?> updatePasswordDialog(BuildContext context) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (ctx) {
      return Dialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(24)),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      'Atualização de senha',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  // Current password
                  const CustomTextField(
                    icon: Icons.lock,
                    labelText: "Senha atual",
                    isObscuredField: true,
                  ),

                  // New password
                  const CustomTextField(
                    icon: Icons.lock_outline,
                    labelText: "Nova senha",
                    isObscuredField: true,
                  ),

                  // Confirm new password
                  const CustomTextField(
                    icon: Icons.lock_outline,
                    labelText: "Confirme nova senha",
                    isObscuredField: true,
                  ),

                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: const Text(
                        'Atualizar',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 4,
              right: 4,
              child: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.close),
              ),
            ),
          ],
        ),
      );
    },
  );
}
