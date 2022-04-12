import 'package:flutter/material.dart';
import '../screens/screens.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading: Icon(
            Icons.sports_basketball,
            color: AppTheme.second,
          ),
          title: Text('Jonathan'),
          subtitle: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            TextButton(
              onPressed: () {},
              child: const Text('Aceptar'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Comentar'),
            ),
          ]),
        ),
      ]),
    );
  }
}
