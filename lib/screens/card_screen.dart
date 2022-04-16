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
          CustomCarDos(
              nombre: 'Logo CR7 Gris & Blanco',
              imageUrl:
                  'https://m.media-amazon.com/images/I/61nf30yb6qL._AC_SX425_.jpg'),
          SizedBox(height: 50),
          CustomCarDos(
              nombre: 'Logo CR7 Negro & Amarillo',
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQsWKZnX7x2vu-5hI_eszsrHBZ_X2A_TWyuw&usqp=CAU'),
          SizedBox(height: 50),
          CustomCarDos(
              imageUrl:
                  'https://estaticos-cdn.sport.es/clip/7f741da0-e9dd-4a01-9460-5fb065623c84_alta-libre-aspect-ratio_default_0.jpg'),
        ],
      ),
    );
  }
}
