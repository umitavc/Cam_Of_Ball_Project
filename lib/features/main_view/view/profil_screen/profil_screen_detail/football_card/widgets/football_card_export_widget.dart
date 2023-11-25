import 'package:flutter/material.dart';

class FootballCardExportButton extends StatelessWidget {
  const FootballCardExportButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color(0xffFFFEFE),
          ),
          child: Image.asset(
            'assets/png/images/export.png',
          ),),
    );
  }
}
