
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomBuildPage extends StatelessWidget {
   CustomBuildPage({required this.imagePath, super.key});
  

  String imagePath;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Image.asset(imagePath),
    );
  }
}
