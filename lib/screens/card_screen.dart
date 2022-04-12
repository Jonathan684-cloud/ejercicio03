import 'package:flutter/material.dart';
import 'package:ejercicio03/screens/screens.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        //padding: EdgeInsets.only(right: 20, left: 20),
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        children: const [
          CustomCard1(),
          SizedBox(height: 50),
          CustomCarDos(),
          CustomCarDos(),
          CustomCarDos(),
        ],
      ),
    );
  }
}
