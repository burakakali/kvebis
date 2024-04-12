import 'package:flutter/material.dart';
import 'package:kvebis_app/core/constants/string_constant.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    required this.controller,
    required this.text,
    required this.onPressed,
    this.isVisible = false,
    super.key,
  });
  final TextEditingController controller;
  final VoidCallback onPressed;
  final String text;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) =>
          value!.isNotEmpty ? null : StringConstants.enterYourPassword,
      obscureText: isVisible,
      decoration: InputDecoration(
        labelText: text,
        icon: const Icon(Icons.lock),
        suffixIcon: IconButton(
          padding: EdgeInsets.zero,
          onPressed: onPressed,
          icon: Icon(
            isVisible ? Icons.visibility : Icons.visibility_off,
          ),
        ),
      ),
    );
  }
}
