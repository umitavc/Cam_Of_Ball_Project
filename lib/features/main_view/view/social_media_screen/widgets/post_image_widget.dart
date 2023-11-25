import 'package:flutter/material.dart';

class PostImageWidget extends StatelessWidget {
  const PostImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Image.asset(
          'assets/png/post.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
