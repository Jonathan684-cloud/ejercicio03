import 'package:flutter/material.dart';

class CampoDeTexto extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final String? helperText;
  const CampoDeTexto({
    Key? key,
    this.labelText,
    this.hintText,
    this.helperText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        print(value);
      },
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
