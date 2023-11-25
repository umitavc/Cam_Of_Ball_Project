import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/core/router/app_router.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/chat_screen/widgets/friends_avatar_widgets.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/chat_screen/widgets/list_tile_widget.dart';
import 'package:cam_of_ball/features/utils/widgets/screen_title.dart';
import 'package:cam_of_ball/features/utils/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            children: [
              ScreenTitle(
                title: 'Chat',
                child: InkWell(
                  onTap: () {
                    context.router.push(const ChatGroupRoute());
                  },
                  child: SvgPicture.asset('assets/svg/chat/edit.svg'),
                ),
              ),
              SearchWidget(
                title: 'Search',
                elevation: 1,
              ),
              //const FriendsAvatar(),
              Expanded(
                child: SingleChildScrollView(
                  child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          context.router.push(const MessageRoute());
                        },
                        child: const ListTileWidget(),);
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
