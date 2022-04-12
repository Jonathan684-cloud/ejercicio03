import 'package:flutter/material.dart';

class CustomCarDos extends StatelessWidget {
  const CustomCarDos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 25,
      child: Column(
        children: const [
          /*
          Image(
              image: NetworkImage(
                  'https://m.media-amazon.com/images/I/61nf30yb6qL._AC_SX425_.jpg'))
          */
          FadeInImage(
            image: NetworkImage(
                'https://m.media-amazon.com/images/I/61nf30yb6qL._AC_SX425_.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 1000),
          ),
          Text('El comandante CR7 Siu')
        ],
      ),
    );
  }
}
