import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';

class PostTileWidget extends StatelessWidget {
  const PostTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const SizedBox(
        height: 33,
        width: 33,
        child: Stack(
          clipBehavior: Clip.none,
          fit: StackFit.expand,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/png/avatar.png'),
            ),
          ],
        ),
      ),
      title: Text('James Flek', style: AppTextStyles.blackTextStyle.copyWith(fontSize: 15, fontWeight: FontWeight.w600)),
      subtitle: Text('FORVET', style: AppTextStyles.hinttextStyle.copyWith(fontSize: 10, fontWeight: FontWeight.w400)),
    );
  }
}
