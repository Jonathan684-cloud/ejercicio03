import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _height = 125;
  double _width = 125;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);

  void animarContainer() {
    setState(() {
      // Create a random number generator.
      final random = Random();

      // Generate a random width and height.
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();

      // Generate a random color.
      _color = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );

      // Generate a random border radius.
      _borderRadius =
          BorderRadius.circular(random.nextInt(100).toDouble() + 10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Animated Screen')),
        body: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 2000),
            curve: Curves.bounceOut,
            width: _height,
            height: _width,
            decoration:
                BoxDecoration(color: _color, borderRadius: _borderRadius),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.play_circle_outline, size: 40),
            onPressed: () => animarContainer()));
  }
}
