import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatefulWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  State<AlertScreen> createState() => _AlertScreenState();
}

class _AlertScreenState extends State<AlertScreen> {
  void mostrarAlertaIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
              title: const Text('Titulo'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('ESte es el contenido ded la alerta'),
                  const FlutterLogo(
                    size: 120,
                  ),
                  ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Salir')),
                ],
              ),
              actions: [
                ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancelar',
                        style: TextStyle(color: Colors.red))),
                ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Aceptar',
                        style: TextStyle(color: Colors.blue))),
              ]);
        });
  }

  void mostrarAlertaAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Titulo'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('ESte es el contenido ded la alerta'),
                FlutterLogo(
                  size: 120,
                ),
                ElevatedButton(onPressed: null, child: Text('Aceptar')),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelar'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () => Platform.isAndroid //para saber el tipo de dispositivo
            ? mostrarAlertaAndroid(context)
            : mostrarAlertaIOS(context),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text('Boton Alerta'),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.plus_one),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
