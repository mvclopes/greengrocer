import 'package:flutter/material.dart';
import 'package:greengrocer/src/features/common_widgets/custom_text_field.dart';
import 'package:greengrocer/src/utils/common_input_masks.dart';

class ProfileForms extends StatelessWidget {
  const ProfileForms({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Email
        const CustomTextField(icon: Icons.email, labelText: "Email"),

        // Name
        const CustomTextField(icon: Icons.person, labelText: "Nome"),

        // Phone number
        CustomTextField(
          icon: Icons.phone,
          labelText: "Celular",
          inputFormatters: [CommonInputMasks.phoneFormatter],
          keyboardType: TextInputType.number,
        ),

        // Name
        CustomTextField(
          icon: Icons.file_copy,
          labelText: "CPF",
          isObscuredField: true,
          inputFormatters: [CommonInputMasks.cpfFormatter],
          keyboardType: TextInputType.number,
        ),
      ],
    );
  }
}
