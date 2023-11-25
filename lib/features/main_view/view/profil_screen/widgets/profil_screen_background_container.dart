import 'package:flutter/material.dart';

class ProfilScreenBackgroundWidget extends StatelessWidget {
  const ProfilScreenBackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xff1027E5),
            ),
          );
  }
}