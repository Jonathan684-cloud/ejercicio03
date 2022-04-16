//comentario
import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Circle Avatar'),
          actions: [
            Container(
                margin: const EdgeInsets.only(right: 20),
                child: const CircleAvatar(
                  child: Text('JB'),
                  backgroundColor: Colors.amberAccent,
                )),
          ],
        ),
        body: const Center(
          child: CircleAvatar(
            maxRadius: 150,
            backgroundImage: NetworkImage(
                'https://thumbs.dreamstime.com/z/personas-felices-22980550.jpg'),
          ),
        ));
  }
}
