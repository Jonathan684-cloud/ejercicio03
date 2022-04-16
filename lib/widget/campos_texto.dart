import 'package:flutter/material.dart';

class CampoDeTexto extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final String? helperText;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CampoDeTexto({
    Key? key,
    this.labelText,
    this.hintText,
    this.helperText,
    this.keyboardType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      keyboardType: keyboardType,
      obscureText: obscureText,
      textCapitalization: TextCapitalization.words,
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        if (value == null) return 'Required';
        return value.length < 3 ? 'minimo 3 letras ' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        counterText: '3 caracteres',
        //prefixIcon: Icon(Icons.verified_user_outlined),
        suffixIcon: Icon(Icons.person),
        icon: Icon(Icons.admin_panel_settings_outlined, size: 30),
      ),
    );
  }
}
