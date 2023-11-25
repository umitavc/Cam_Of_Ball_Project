import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProfilScreenPost extends StatelessWidget {
  const ProfilScreenPost({super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      itemCount: 7,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(2),
        child: Image.asset('assets/png/images/image${index+1}.png',fit: BoxFit.cover,),
      ),
    );
  }
}
