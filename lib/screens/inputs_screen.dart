import 'package:ejercicio03/screens/screens.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'name': 'Jonathan',
      'email': 'jhonbelka@gmail.com',
      'password': 'Belka123',
      'rol': 'admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs & Form'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                CampoDeTexto(
                  hintText: 'Escriba correo',
                  labelText: 'Correl electronico',
                  helperText: "Excepciones",
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 25,
                ),
                CampoDeTexto(
                  hintText: 'Escriba nombre',
                  labelText: 'Nombre de usuario',
                  helperText: "Excepciones",
                  formProperty: 'name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 25,
                ),
                CampoDeTexto(
                  hintText: 'Escriba su contraseña',
                  labelText: 'Password',
                  helperText: "****",
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 25,
                ),
                DropdownButtonFormField<String>(
                  value: 'admin',
                  items: const [
                    DropdownMenuItem(
                      value: 'admin',
                      child: Text('Admin'),
                    ),
                    DropdownMenuItem(
                      value: 'superUsuario',
                      child: Text('superUsuario'),
                    ),
                    DropdownMenuItem(
                      value: 'Asistente',
                      child: Text('Asistente'),
                    ),
                    DropdownMenuItem(
                      value: 'Cliente',
                      child: Text('Cliente'),
                    ),
                  ],
                  onChanged: (value) {
                    print(value);
                    formValues['rol'] = value ?? 'admin';
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                    child: const SizedBox(
                        width: double.maxFinite,
                        child: Center(child: Text('Guardar'))),
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        print('NO VALID');
                        return;
                      }
                      print(formValues);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
