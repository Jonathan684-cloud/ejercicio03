import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Slider Screen')),
        body: Column(
          children: [
            Slider(
                min: 50,
                max: 400,
                //divisions: 10,
                activeColor: AppTheme.third,
                value: _sliderValue,
                onChanged: _sliderEnabled
                    ? (value) {
                        _sliderValue = value;
                        setState(() {});
                      }
                    : null),
            /*Checkbox(
                value: _sliderEnabled,
                onChanged: (value) {
                  _sliderEnabled = value ?? true;
                  setState(() {});
                }),*/
            CheckboxListTile(
                title: const Text('Habilitar'),
                value: _sliderEnabled,
                onChanged: (value) => setState(() {
                      _sliderEnabled = value ?? true;
                    })),
            Switch(
                value: _sliderEnabled,
                onChanged: (value) => setState(() {
                      _sliderEnabled = value;
                    })),
            SwitchListTile.adaptive(
                title: const Text('Habilitar'),
                value: _sliderEnabled,
                onChanged: (value) => setState(() {
                      _sliderEnabled = value;
                    })),
            Expanded(
                child: SingleChildScrollView(
                    child: Image(
                        image: const NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx_g4WXX8JjYDgc7jkjA2sU5mP4Mt7-ueoNLIO00XBjrB2HujZ7FauyHHiFDX3m1y1qc4&usqp=CAU'),
                        fit: BoxFit.contain,
                        width: _sliderValue)))
          ],
        ));
  }
}
