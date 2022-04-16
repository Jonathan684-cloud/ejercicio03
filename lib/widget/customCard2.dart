import 'package:flutter/material.dart';

class CustomCarDos extends StatelessWidget {
  final String imageUrl;
  final String? nombre;
  const CustomCarDos({Key? key, required this.imageUrl, this.nombre})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 25,
      shadowColor: Colors.amberAccent,
      //shadowColor: Colors.amberAccent.withOpacity(1),

      child: Column(
        children: [
          /*
          Image(
              image: NetworkImage(
                  'https://m.media-amazon.com/images/I/61nf30yb6qL._AC_SX425_.jpg'))
          */
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 1000),
          ),
          //aqui
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              TextButton(
                onPressed: () {},
                child: const Text('Añadir'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Comprar'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Comentar'),
              ),
            ]),
          ),
          if (nombre != null)
            Container(
                padding: const EdgeInsets.only(right: 15, top: 10, bottom: 10),
                alignment: AlignmentDirectional.centerEnd,
                child: Text(nombre ?? 'Hola'))
        ],
      ),
    );
  }
}
