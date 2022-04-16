import 'package:flutter/material.dart';
import 'package:ejercicio03/screens/screens.dart';
import '../theme/app_theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),
      appBar: AppBar(
        title: const Text('Burger Delivery'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Container(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * (25 / 100),
              decoration: const BoxDecoration(color: AppTheme.fourth),
              child: Center(
                  child: Image(
                      image: AssetImage(
                'logo.png',
              )))),
          Container(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * (75 / 100),
              decoration: const BoxDecoration(color: AppTheme.fifth),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Campos('Correo Electronico', 'correo@gmail.com'),
                  Campos('Contraseña', '******'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      TextButton(
                          child: Text(
                            'Olvidaste',
                            style: TextStyle(color: Colors.orange),
                          ),
                          onPressed: null),
                      TextButton(
                          child: Text('Registrate',
                              style: TextStyle(color: Colors.orange)),
                          onPressed: null),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * (75 / 100),
                    height: 50,
                    decoration: BoxDecoration(color: Colors.orange),
                    child: TextButton(
                        child: Text('Iniciar Sesion',
                            style: TextStyle(color: Colors.white)),
                        onPressed: () {}),
                  ),
                ],
              ))
        ]),
      ),
    );
  }
}

Widget Campos(String label, String placeholder) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Column(
      children: [
        TextFormField(
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
            hintText: placeholder,
            labelText: label,
            helperText: 'Solamente Letras',
            counterText: '3 caracteres',
            prefixIcon: Icon(Icons.verified_user_outlined),
            suffixIcon: Icon(Icons.person),
            //icon: Icon(Icons.admin_panel_settings_outlined, size: 30),
          ),
        )
      ],
    ),
  );
}
