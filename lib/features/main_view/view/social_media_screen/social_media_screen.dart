import 'package:cam_of_ball/features/main_view/view/social_media_screen/widgets/post_comment_widget.dart';
import 'package:cam_of_ball/features/main_view/view/social_media_screen/widgets/post_image_widget.dart';
import 'package:cam_of_ball/features/main_view/view/social_media_screen/widgets/post_like_widget.dart';
import 'package:cam_of_ball/features/main_view/view/social_media_screen/widgets/post_tile_widget.dart';
import 'package:cam_of_ball/features/utils/widgets/screen_title.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';

class SocialMediaScreen extends StatelessWidget {
  const SocialMediaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            children: [
              ScreenTitle(
                isActive: true,
                title: 'Post',
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    'Follow',
                    style: AppTextStyles.blueSubTextStyle.copyWith(fontSize: 15),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return  const Column(
                        children: [
                          PostTileWidget(),   
                          PostImageWidget(),
                          PostLikeWidget(),
                          PostCommentWidget(),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
