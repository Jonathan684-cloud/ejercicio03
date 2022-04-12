import 'package:flutter/material.dart';

class ListViewScreenUno extends StatelessWidget {
  final options = const [
    'Jonathan',
    'Ezequiel',
    'Benito',
    'Pineda',
    '2547522016'
  ];
  const ListViewScreenUno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("App Bar")),
      body: ListView(
        children: [
          ...options
              .map((e) => ListTile(
                    leading: const Icon(Icons.access_time_sharp),
                    title: Text(
                      e,
                      style: const TextStyle(fontSize: 40),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  ))
              .toList()
          /*ListTile(
              leading: Icon(Icons.access_time_sharp), title: Text('Jonathan')),*/
        ],
      ),
    );
  }
}
