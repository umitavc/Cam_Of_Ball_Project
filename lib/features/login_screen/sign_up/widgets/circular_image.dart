import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      width: 88,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/png/register/circular_image.png"),
          ),
          Positioned(
            bottom: 0,
            right: -35,
            child: RawMaterialButton(
              onPressed: () {},
              elevation: 2,
              fillColor: const Color(0xFFF5F6F9),
              padding: const EdgeInsets.all(10),
              shape: const CircleBorder(),
              child: SvgPicture.asset('assets/svg/register/camera.svg'),
            ),
          ),
        ],
      ),
    );
  }
}
