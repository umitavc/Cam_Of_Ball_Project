
import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

var _currentValue = 0;

class _SliderWidgetState extends State<SliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
      ],
    );
  }

  Slider _getSlider() {
    return Slider(
      value: _currentValue.toDouble(),
      max: 100,
      divisions: 10,
      label: _currentValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentValue = value.toInt();
        });
      },
    );
  }
}
