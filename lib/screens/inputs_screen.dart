import 'package:ejercicio03/screens/screens.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs & Form'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: const [
              CampoDeTexto(
                  hintText: 'Escriba correo',
                  labelText: 'Correl electronico',
                  helperText: "Excepciones"),
              CampoDeTexto(
                  hintText: 'Escriba nombre',
                  labelText: 'Nombre de usuario',
                  helperText: "Excepciones"),
              CampoDeTexto(
                  hintText: 'Escriba su contraseña',
                  labelText: 'Password',
                  helperText: "****"),
            ],
          ),
        ),
      ),
    );
  }
}
