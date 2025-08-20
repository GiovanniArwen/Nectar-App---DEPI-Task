import 'package:flutter/material.dart';

class CustomTextformfield extends StatelessWidget {
  const CustomTextformfield({
    super.key,
    required this.labelText,
    this.suffixIcon,
    this.prefixIcon,
    this.onChanged,
    this.obscureText = false,
    this.validator
  });
  final String labelText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function(String)? onChanged;
  final bool obscureText;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        label: Text(
          labelText,
          style: TextStyle(fontSize: 17),
        ),
      ),
    );
  }
}
