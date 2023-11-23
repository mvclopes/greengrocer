import 'package:flutter/material.dart';
import 'package:greengrocer/src/domain/model/user.dart';
import 'package:greengrocer/src/features/common_widgets/custom_text_field.dart';
import 'package:greengrocer/src/utils/common_input_masks.dart';

class ProfileForms extends StatelessWidget {
  final User user;

  const ProfileForms({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Email
        CustomTextField(
          initialValue: user.email,
          icon: Icons.email,
          labelText: "Email",
          readOnly: true,
        ),

        // Name
        CustomTextField(
          initialValue: user.name,
          icon: Icons.person,
          labelText: "Nome",
          readOnly: true,
        ),

        // Phone number
        CustomTextField(
          initialValue: user.phoneNumber,
          icon: Icons.phone,
          labelText: "Celular",
          inputFormatters: [CommonInputMasks.phoneFormatter],
          keyboardType: TextInputType.number,
          readOnly: true,
        ),

        // CPF
        CustomTextField(
          initialValue: user.cpf,
          icon: Icons.file_copy,
          labelText: "CPF",
          isObscuredField: true,
          inputFormatters: [CommonInputMasks.cpfFormatter],
          keyboardType: TextInputType.number,
          readOnly: true,
        ),
      ],
    );
  }
}
