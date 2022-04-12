import 'package:flutter/material.dart';

class ListViewScreenDos extends StatelessWidget {
  final options = const [
    'Jonathan',
    'Ezequiel',
    'Benito',
    'Pineda',
    '2547522016'
  ];

  const ListViewScreenDos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("mApp Bara"),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(
            Icons.access_time_sharp,
            color: Colors.indigo,
          ),
          title: Text(
            options[index],
            style: const TextStyle(fontSize: 40),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Color.fromARGB(255, 235, 8, 8),
          ),
          onTap: () {},
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
