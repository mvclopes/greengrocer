import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  final IconData icon;
  final String labelText;
  final bool isObscuredField;
  final TextInputType? keyboardType;
  final bool readOnly;
  final String initialValue;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextField({
    Key? key,
    required this.icon,
    required this.labelText,
    this.isObscuredField = false,
    this.inputFormatters,
    this.keyboardType,
    this.readOnly = false,
    this.initialValue = "",
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
    IconData visibilityIcon =
        shouldShowIcon ? Icons.visibility : Icons.visibility_off;

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
        initialValue: widget.initialValue,
        keyboardType: widget.keyboardType,
        inputFormatters: widget.inputFormatters,
        obscureText: shouldShowIcon,
        readOnly: widget.readOnly,
        decoration: InputDecoration(
          prefixIcon: Icon(widget.icon),
          suffixIcon: suffixIcon,
          labelText: widget.labelText,
          isDense: true,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
        ),
      ),
    );
  }
}
