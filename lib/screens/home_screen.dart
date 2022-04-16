import 'package:ejercicio03/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOpciones = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en flutter'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: Icon(
                  menuOpciones[index].icon,
                  color: AppTheme.second,
                ),
                title: Text(
                  menuOpciones[index].name,
                  style: const TextStyle(color: AppTheme.second),
                ),
                onTap: () {
                  Navigator.pushNamed(context, menuOpciones[index].route);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOpciones.length),
    );
  }
}
