import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final IconData icon;
  final String labelText;
  final bool isObscuredField;

  const CustomTextField({
    Key? key,
    required this.icon,
    required this.labelText,
    this.isObscuredField = false,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool shouldShowIcon = false;

  @override
  void initState() {
    super.initState();
    shouldShowIcon = widget.isObscuredField;
  }

  @override
  Widget build(BuildContext context) {
    IconData visibilityIcon = shouldShowIcon ? Icons.visibility : Icons.visibility_off;

    Widget? suffixIcon = widget.isObscuredField
        ? IconButton(
            onPressed: () {
              setState(() {
                shouldShowIcon = !shouldShowIcon;
              });
            },
            icon: Icon(visibilityIcon))
        : null;

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        obscureText: shouldShowIcon,
        decoration: InputDecoration(
            prefixIcon: Icon(widget.icon),
            suffixIcon: suffixIcon,
            labelText: widget.labelText,
            isDense: true,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)))),
      ),
    );
  }
}

